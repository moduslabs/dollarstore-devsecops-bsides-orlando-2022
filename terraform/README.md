# Terraform Code


This code builds out our AWS environment for the talk demonstration.

It is divided into the following components:

1. Infrastructure for storing state in AWS, in an S3 bucket

2. The Jenkins infrastructure that our DevSecOps pipeline is built in

3. The infrastructure for hosting our vulnerable web application 


## Executing the code 

Make sure you have your Secret key and Access key from AWS and session token if using SSO.


There are many ways to set the credentials for youe environment. Some are secure, and some less so.

The docs here provide and overview: https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration


<list>



export AWS_PROFILE=profile_name

Navigate into the tf-state folder as this will be our first step.

Run:

```
terraform init
```

Following this, run apply. Exclude the var flag if using SSO config, env vars, entering from command line etc:

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




Next let's build out our server infrastructure:

```
terraform init
```

```
terraform plan
```



```
terraform apply
```


You can enter a different region if you want, but we can just stick with us-east-1

Select a cidr block in the format 10.0.0.0/16


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




