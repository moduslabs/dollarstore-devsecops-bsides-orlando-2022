# DevSecOps on a $ store budget

[![MIT Licensed](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](./LICENSE)
[![Powered by Modus_Create](https://img.shields.io/badge/powered_by-Modus_Create-blue.svg?longCache=true&style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMzIwIDMwMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBkPSJNOTguODI0IDE0OS40OThjMCAxMi41Ny0yLjM1NiAyNC41ODItNi42MzcgMzUuNjM3LTQ5LjEtMjQuODEtODIuNzc1LTc1LjY5Mi04Mi43NzUtMTM0LjQ2IDAtMTcuNzgyIDMuMDkxLTM0LjgzOCA4Ljc0OS01MC42NzVhMTQ5LjUzNSAxNDkuNTM1IDAgMCAxIDQxLjEyNCAxMS4wNDYgMTA3Ljg3NyAxMDcuODc3IDAgMCAwLTcuNTIgMzkuNjI4YzAgMzYuODQyIDE4LjQyMyA2OS4zNiA0Ni41NDQgODguOTAzLjMyNiAzLjI2NS41MTUgNi41Ny41MTUgOS45MjF6TTY3LjgyIDE1LjAxOGM0OS4xIDI0LjgxMSA4Mi43NjggNzUuNzExIDgyLjc2OCAxMzQuNDggMCA4My4xNjgtNjcuNDIgMTUwLjU4OC0xNTAuNTg4IDE1MC41ODh2LTQyLjM1M2M1OS43NzggMCAxMDguMjM1LTQ4LjQ1OSAxMDguMjM1LTEwOC4yMzUgMC0zNi44NS0xOC40My02OS4zOC00Ni41NjItODguOTI3YTk5Ljk0OSA5OS45NDkgMCAwIDEtLjQ5Ny05Ljg5NyA5OC41MTIgOTguNTEyIDAgMCAxIDYuNjQ0LTM1LjY1NnptMTU1LjI5MiAxODIuNzE4YzE3LjczNyAzNS41NTggNTQuNDUgNTkuOTk3IDk2Ljg4OCA1OS45OTd2NDIuMzUzYy02MS45NTUgMC0xMTUuMTYyLTM3LjQyLTEzOC4yOC05MC44ODZhMTU4LjgxMSAxNTguODExIDAgMCAwIDQxLjM5Mi0xMS40NjR6bS0xMC4yNi02My41ODlhOTguMjMyIDk4LjIzMiAwIDAgMS00My40MjggMTQuODg5QzE2OS42NTQgNzIuMjI0IDIyNy4zOSA4Ljk1IDMwMS44NDUuMDAzYzQuNzAxIDEzLjE1MiA3LjU5MyAyNy4xNiA4LjQ1IDQxLjcxNC01MC4xMzMgNC40Ni05MC40MzMgNDMuMDgtOTcuNDQzIDkyLjQzem01NC4yNzgtNjguMTA1YzEyLjc5NC04LjEyNyAyNy41NjctMTMuNDA3IDQzLjQ1Mi0xNC45MTEtLjI0NyA4Mi45NTctNjcuNTY3IDE1MC4xMzItMTUwLjU4MiAxNTAuMTMyLTIuODQ2IDAtNS42NzMtLjA4OC04LjQ4LS4yNDNhMTU5LjM3OCAxNTkuMzc4IDAgMCAwIDguMTk4LTQyLjExOGMuMDk0IDAgLjE4Ny4wMDguMjgyLjAwOCA1NC41NTcgMCA5OS42NjUtNDAuMzczIDEwNy4xMy05Mi44Njh6IiBmaWxsPSIjRkZGIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+)](https://moduscreate.com)

Source code and documentation for the BSides Orlando 2022 (11/18 - 11/19) talk: DevSecOps on a $ store budget

- [BSides Orlando 2022 Talk Details](#bsides-orlando-2022-talk-details)
  - [Abstract](#abstract)
  - [Description](#description)
  - [Talk outline](#talk-outline)
- [Getting Started](#getting-started)
  - [Local setup](#local-setup)
- [Developing](#developing)
  - [Prerequisites](#prerequisites)
  - [Running the Pipeline](#running-the-pipelines)
  - [Contributing](#contributing)
- [Modus Create](#modus-create)
- [Licensing](#licensing)


# BSides Orlando 2022 Talk Details

## Title: DevSecOps on a $ store budget


## Abstract

Security tooling can be expensive, very expensive. Never fear though, there are a multitude of cheap and open source options out there. You too can build a robust DevSecOps pipeline on a dollar store budget.

Covering everything from open source SAST tools to free secret scanning and Infrastructure-as-Code audits, this talk walks you through options to build out CI/CD pipelines that help to secure your code base without taking out a second mortgage.

Some basic knowledge of DevOps and CI/CD would be useful but is not mandatory.

## Description

This talk will walk the audience through how to build a variety of simple CI/CD pipelines with Jenkins and GitHub Actions. The CI/CD pipeline will demonstrate how to incorporate a number of security and code analysis tools including:

* Cloc - What’s in the repository?

* Checkov - Bridgecrews free IaC scanner

* PHPMetrics - considering Cyclomatic Complexity from a security perspective

* Tortufo - GoDaddy’s free Secrets Scanning tool

* Git-secrets - Prevent your AWS secrets from hitting the repository

* CodeQL and Dependabot - free scanning of open source repos in GitHub

The talk will then wrap up by looking at Horusec an open source SAST platform that incorporates a variety of security and linting tools in a container based environment.

An example PHP application using Terraform Infrastructure-as-Code targeting an AWS environment will be used to demo the DevSecOps process to the audience. This code can be downloaded during the talk to allow participants to follow along in a hands on fashion.

## Talk outline:

* Introduction

* What is DevSecOps

* Commercial tools aren't the only option

* Jenkins overview

* A walk through our example repository

* Scanning a repository with cloc

* Reviewing Terraform with Checkov

* Auditing PHP with PHPMetrics

* Scan for secrets using Tortufo

* Pre-commit hooks with git-secrets

* Open source Shift Left with GitHub

* Wrapping up with Horusec

* Closing statement

* QA


# Getting Started

The following guide provides instructions for setting up the Jenkins CI/CD pipeline for this DevSecOps project. Depending on the environment you chose to use for running Jenkins, you will need to install/setup a number of prequisite services prior to building your pipeline. For example when setting up the cloud infrastructure you will need to ensure you have Terraform installed locally, and if you wish to map a domain to Jenkins, ensure this is registered in Route 53. 

Each section will provide a guide on the pre-requisites and the steps to get up and running. 


## Local setup.

To kick the the tires on the application and the pipeline you can install Jenkins locally.

Jenkins install instructions can be found at: https://www.jenkins.io/doc/book/installing/

The guide below covers local setup on personal devices such as Windows and Mac laptops.

### Prerequisites

If you want to follow along locally you will need:

1. Jenkins setup locally

2. A forked copy of the course code (this repository)

3. A bridgecrew account - you can set this up with your GitHub user: https://www.bridgecrew.cloud/


In addition to the above, there will be some local OS specific requirements, which are covered under the relevant section below.


### MacOS (Brew)

Make sure you have brew installed on your Mac and that you have updated it recently.

With brew in place we can then beging by adding Jenkins.

Install the LTS version:

```
brew install jenkins-lts
```

Once installed, start it up e.g.

```
brew services start jenkins-lts
```

Navigate to:

```
http://localhost:8080
```
 
You will now be prompted to enter the default password. This will be stored in a location shared with you on
the webpage and will be in a format similar to:

```
/Users/<user>/.jenkins/secrets/initialAdminPassword
```

Using this password you should now be logged in, and can configure Jenkins, change the password and get started.

The default plugin installation option presented initially should be sufficent for this talk, bar one missing plugin you will need. The default plugins installation wizard will also allow you to setup a new admin user.
 
Once this is complete, you will need to add the afore mentioned missing plugin, which is the Docker pipeline one.

Navigate to your Jenkins management view:

```
Dashboard > Manage Jenkins
```

From here select `Plugin Manager`.

From the list of `Available` plugins select `Docker Pipeline` and install this.

```
Dashboard > Manage Jenkins > Manage Plugins > Available (tab) > docker-workflow.
```

You should now be all set to start building CI/CD pipelines in Jenkins.


If you hit issues with Docker not being found when you run the pipeline, edit: 

```
/usr/local/opt/jenkins-lts/homebrew.mxcl.jenkins-lts.plist
```

Add:

```
    <key>EnvironmentVariables</key>
    <dict>
      <key>PATH</key>
      <string>/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin</string>
    </dict>
```

Then restart:

```
brew services restart jenkins-lts
```


### Windows

Instructions here are based upon the Jenkins documentation at: https://www.jenkins.io/doc/book/installing/windows/

1. Start by grabbing the MSI installer from the downlaods page: https://www.jenkins.io/download/#downloading-jenkins 

2. Once downloaded, run the installer and select a suitable location for it to install Jenkins into e.g. `c:\ program Files\Jenkins`

3. Run the Jenkins service using a `local` or `domain` user. Specify the user name and password for running Jenkins then click on `Test Credentials` to test them

4. Select the port as `8080` - make sure you have nothing else runnong on this port locally

5. Select the Java home directory. This is the location of `JDK` or `JRE`. If you don't have it installed already, follow the installation prompts.

6. Configure any other services tha need to be installed, such as Firewall Exceptions to run on port `8080`

7. Click `Install` to kick off the process

8. Once installed you will need to obtain the default password from `<path\to\Jenkins>\secrets\iniitalAdminPassword`

9. Enter this into the `Administrator password` text field

10. Select `Install suggested plugins`

You are now ready to setup your new admin user and get started.


### Linux

TBD

## Cloud

For users who wish to build clloud based infrastructure that can be shared among team members, these instructions guide you through deploying the Terraform code for setting up the environment, using Packer to create a pre-baked AMI and finally integrating your Jenkins cloud hosted environment with GitHub.

Currently AWS is the only cloud vendor supported, but the code could easy by expanded to support Microsoft Azure and GCP.


### AWS Installation Instructions

The AWS installation instructions walk you through how to setup an environment in AWS to hosted Jenkins. This includes:

1. Building a Jenkins AMI with baked in Docker support, which can be deployed on an EC2 instance

2. Terraform code that builds out:

    a. The VPC and S3 buckets for storing state

    b. Subnets (Private and Public)

    c. Bastion host and security group 

    d. Jenkins servers and security group

    e. ELB and security group 

3. Manually adding in your domain name and certificate (and instructions on disabling this feature if you don't want to use it)

 
At the completion of the infrastructure setup you will have a fully built Jenkins CI/CD environment that can be easily added to or destroyed via Terraform. 


### Pre-requisities

To follow along in the cloud, you will need:

1. An AWS account

2. A forked copy of the source code 

3. A bridgecrew account - you can set this up with your GitHub user

4. A domain name/subdomain configured as a Hosted zone in your AWS account. A number of services offer free domain registration or domains for as little as $0.01. Note: if you do not want to setup a domain and SSL cert, and map these to the load balancer, instructions will be provided on disabling this portion of the Terraform code.


### Adding a SSL cert

Follow the steps here to manually create a subdomain:

https://aws.amazon.com/premiumsupport/knowledge-center/create-subdomain-route-53/

Then add the SSL cert like this:

1. Request a certificate

2. Add the reference to DNS 

3. Copy the Cert ARN. You wll need to add this to your .tfsecrets file in the next stage 

4. Cert can now be hooked up to the ELB via Terraform 


## The Terraform code

A separate README is provided with a detailed description of the Terraform code and what it is does.

From a high-level the Terraform files are responsible for building:

1. The S3 bucket for storing state in AWS `terraform > tf-state`

2. The Jenkins server and associated infrastructure `terraform > network-infra`

3. The Jenkins AMI `packer`

4. The PHP server for running our vulnerable webapp. `terraform > app-server`


In order to run the Terraform scripts make sure you have Terraform installed on the device you will be executing them from. 

Instructions for Mac, Windows and Linux are located here: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

You will also need Packer installed to create the AMI. Instructions for this are located at: https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli

Once installation is complete you are ready to begin.


### Building the Jenkins AMI

The Terraform scripts will reference the AMI that you have Jenkins installed on. Included in this repository is a simple Packer configuration that will build the AMI and store it in your AWS account.

In order for this to work you will need to have a VPC already in place. This creates something of a chicken and egg problem, as in order to create the VPC for Jenkins, you need the AMI reference. 

The easiest way to do this is to create a VPC manually through the web console, and then point Packer to it. For further information on this, please refer to: $

```
AWS Marketplace > Discover products
```

Use the `Search AWS Marketplace products` field to search for Jenkins.

There are multiple options, many of which would be very cheap or practically free for testing these instructions out.

Alternatively, you could create an AMI manually by installing Jenkins on an EC2 instance and taking an AMI snapshot.

For further instructions on this, refer to: https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/ 


Search results

### Running the Terraform scripts

Follow the instructions at: https://github.com/moduslabs/dollarstore-devsecops-bsides-orlando-2022/blob/master/terraform/README.md
then return back here. 

(Optional) Next add the load balancer to the domain:

https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-elb-load-balancer.html


## Configure the Pipeline

1. Make sure you used a forked version of this repository and cloned it (you'll need it again shortly)

2. Login to Jenkins

3. Call your pipeline bsidesorlando2022

4. Description - add a description of your choosing

5. Under pipeline select `Pipeline script from SCM`

6. Select `Git` from SCM and add the repo location. Note, if you have a private fork you will need to enter login credentials 

7. Add the path to the Jenkinsfile 

8. Save the file. 

9. `Build Now`

10. Expect to see a few errors, as we need to generate an API key for Checkov.



## Running the Pipelines

Start with adding in an API key.

Add the Env var to Jenkins:

`This project is parameterized`

Select: `Credentials parameter`

Create a Jenkins credential:

`Jenkins Credentials Provider: Jenkins`

1. Domain, leave default

2. Kind - secret text

3. Scope: Global

4. Secret - paste API key

5. ID: `checkov-api-key`

6. Description - say what it is

Pop up closes, set the `Default Value` to the BSides API Key 


Edit the Jenkins file and update the Checkov call to include your API key environment var name if you called it something different.


Run build with Parameters.

View Console log, should see some errors. We need to fix these!


### Cloc Stage

Cloc can be used to ascertain what files existing in a rpeository. This can be a great and quick way of looking for things that shouldn't be in the repostiroy, and could contain security breaches. Examples include:

1. Word docs with passwords

2. Spreadsheets with passwords

3. Binary files with hard coded secrets 


When this stage executes, you can see in the Jenkins console the findings.


### Checov stage


Will see errors in Terraform files.

These are:

<list>.

They are fixed by doing the following:


<fixes>


### PHPMetrics

https://phpmetrics.org/index.html

If you installed PHPMetrics locally, we also installed `composer` alongside PHPMetrics, if you are using the AWS environment option, we have a container in place that executes PHPMetrics.

The key difference between the local and cloud installation is the Installation step, which isn't required in Jenkinsfile.aws since the container is leveraged.


Execute via Pipeline against target code base.



### Tartufo 

Tartufo is a project run by GoDaddy that acts as a wrapper for TurrfleHog, and allows configuration of secrets scanning via a `.toml` file.

You can find background on the tool at: https://tartufo.readthedocs.io/en/stable/

For this project, configuration including exlusions for false positives are added to the following file:

`tartufo.toml`


### Git-secrets

The git-secdrets library built by AWS labs, allows for the detection of AWS API keys. It can be run in a pipeline or locally as pre-commit hook.

Further documentation on the tool plus the source code can be foudn at: https://github.com/awslabs/git-secrets

A containerized version of thistool running on Alpine is available at: https://registry.hub.docker.com/r/moduscreate/alpine-git-secrets 


### Horusec

We are going to run the basic version without the supplementary container tools from inside Jenkins.

The instructions for this are located at:
https://docs.horusec.io/docs/pt-br/tutorials/how-to-use-horusec-without-docker/

The supported scans are:
https://docs.horusec.io/docs/pt-br/cli/analysis-tools/open-source-horusec-engine/


## The PHP Application

Based off of a simple tutorial here: https://code.tutsplus.com/tutorials/how-to-build-a-simple-rest-api-in-php--cms-37000

## Contributing

To add to this project please fork the repository and create a pull request.

# Modus Create

[Modus Create](https://moduscreate.com) is a digital product consultancy. We use a distributed team of the best talent in the world to offer a full suite of digital product design-build services; ranging from consumer facing apps, to digital migration, to agile development training, and business transformation.

<a href="https://moduscreate.com/?utm_source=labs&utm_medium=github&utm_campaign=PROJECT_NAME"><img src="https://res.cloudinary.com/modus-labs/image/upload/h_80/v1533109874/modus/logo-long-black.svg" height="80" alt="Modus Create"/></a>
<br />

This project is part of [Modus Labs](https://labs.moduscreate.com/?utm_source=labs&utm_medium=github&utm_campaign=bsidesorlando22).

<a href="https://labs.moduscreate.com/?utm_source=labs&utm_medium=github&utm_campaign=PROJECT_NAME"><img src="https://res.cloudinary.com/modus-labs/image/upload/h_80/v1531492623/labs/logo-black.svg" height="80" alt="Modus Labs"/></a>

# Licensing

This project is [MIT licensed](./LICENSE).
