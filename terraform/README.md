# Terraform Code


This code builds out our AWS environment for the talk demonstration.

It is divided into the following components:

1. Infrastructure for storing state in AWS, in an S3 bucket

2. The Jenkins infrastructure that our DevSecOps pipeline is built in

3. The infrastructure for hosting our vulnerable web application 


## Executing the code 

Executing the code involves to key components:

1. Ensuring any variables required by the Terraform code are set

2. Running Terraform against the correct folder within the code repository.

To start with we will review the option around variables.


### Setting Variables

Make sure you have your Secret key and Access key from AWS and session token if using SSO. You will also need a copy of your public key to add to the bastion host and Jenkins server to SSH into.

If you are planning on adding a certifiate to the load balancer and connecting it to a domain, you will also need the certificate ARN.

There are many ways to set the credentials for youe environment. Some are secure, and some less so.

The docs here provide and overview: https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration

During this demonstration for expediency we will use the `secrets.tfvars` file. You should never check this into GitHub.

If you decide to use an alternative method for injecting secrets into the deployment process, please ignore any references to inclduing the `.tfvars` file.

Note: If you wish to export your AWS profile, you can use the following command:

```
export AWS_PROFILE=profile_name
```

Once the variables are configured, you can then execute Terraform.


### Running Terraform.

Navigate into the `tf-state` folder as our first step is going to be to set up a S3 bucket for storing our Terraform state files in.

Once in the folder run:

```
terraform init
```

We are now ready to run apply, plan and destory commands against our declarative infrastructure files. 


Following this we can run the `apply` to start the build process. If you wish to do a dry run first to see what will be created, you can run:

```
terraform plan -var-file=secrets.tfvars
```

Exclude the `-var` flag if using env vars, entering from command line etc.

To create our new infrastructure execute the following:

```
terraform apply -var-file=secrets.tfvars
```

You should now see something similar to:

```
aws_s3_bucket.terraform_state: Creating...
aws_s3_bucket.terraform_state: Creation complete after 1s [id=bsides-orlando-terraform-state]
aws_s3_bucket_versioning.state_versioning: Creating...
aws_s3_bucket_public_access_block.protect_state_bucket: Creating...
aws_s3_bucket_public_access_block.protect_state_bucket: Creation complete after 0s [id=bsides-orlando-terraform-state]
aws_s3_bucket_server_side_encryption_configuration.state_encryption: Creating...
aws_s3_bucket_server_side_encryption_configuration.state_encryption: Creation complete after 0s [id=bsides-orlando-terraform-state]
aws_s3_bucket_versioning.state_versioning: Creation complete after 2s [id=bsides-orlando-terraform-state]
aws_s3_bucket_public_access_block.protect_state_bucket: Creating...
aws_s3_bucket_public_access_block.protect_state_bucket: Creation complete after 1s [id=bsides-orlando-terraform-state]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.
```

We now have an S3 bucket in place to store our state files.


Next let's build out our server infrastructure. Navigate into the `network-infra` folder under `terraform`.

As with the state infrastructure, we need to initialize the folder prior to planning or applying:

```
terraform init
```


As with the state infrstructure, you will need to update the `secrets.tfvars` file for this portion of the code base, or ensure all the variables are set via one of the other available methods. 

You can enter a different region if you want, but we can just stick with `us-east-1`

Select a cidr block in the format `10.0.0.0/16`


If you decided to create an SSL certificate, you should have made a note of the ARN. Add this also to the variables, then skip ahead to the deployment section.

However if you decided to not add a domain/subdomain and SSL cert follow the optional steps below prior to visiting the deployment section.

#### (Optional) Disable SSL cert

TBD


#### Deployment

We are now going to create a considerable amount of infrastructure in the AWS account in order to host Jenkins.


Start by running the `plan` command to get a feel for what we are creating:


```
terraform plan -var-file=secrets.tfvars
```

If you are happy to proceed, then execute the `apply` command

```
terraform apply -var-file=secrets.tfvars
```


Apply should output something similar to:

```
aws_vpc.jenkins_vpc: Creating...
aws_vpc.jenkins_vpc: Still creating... [10s elapsed]
aws_vpc.jenkins_vpc: Creation complete after 12s [id=vpc-0da4250ac961fea7a]
....
module.subnet_module.aws_route_table_association.public[1]: Still creating... [1m30s elapsed]
module.subnet_module.aws_route_table_association.public[1]: Creation complete after 1m34s [id=rtbassoc-0abe1db756b792e68]

Apply complete! Resources: 23 added, 0 changed, 0 destroyed.

Outputs:

load-balancer-ip = "xxx"
vpc_cidr_block = "10.0.0.0/16"
vpc_id = "vpc-0da4250ac961fea7a"
```

Update the SG for SSH bastion host and 8080 for Jenkins to your IP address to lock traffic down.


Add your ssh key to your local agent e.g. on Mac

ssh-add =k path/to/key


ssh into bastion host and then connect to jenkins server to get secret to login to Jenkins

```
ssh -A ec2-user@ip
```


You may need to start the ssh agent

```
eval `ssh-agent -s`
```

Connect to the Jenkins instance:

```
ssh -A ec2-user@10.0.0.211
```


Get the secret

```
sudo vim /var/lib/jenkins/secrets/initialAdminPassword
```


Enter the secret to start your Jenkins instalaltion.

You can follow the rest of the main instructions now.




