# DevSecOps on a $ store budget

[![MIT Licensed](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](./LICENSE)
[![Powered by Modus_Create](https://img.shields.io/badge/powered_by-Modus_Create-blue.svg?longCache=true&style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMzIwIDMwMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBkPSJNOTguODI0IDE0OS40OThjMCAxMi41Ny0yLjM1NiAyNC41ODItNi42MzcgMzUuNjM3LTQ5LjEtMjQuODEtODIuNzc1LTc1LjY5Mi04Mi43NzUtMTM0LjQ2IDAtMTcuNzgyIDMuMDkxLTM0LjgzOCA4Ljc0OS01MC42NzVhMTQ5LjUzNSAxNDkuNTM1IDAgMCAxIDQxLjEyNCAxMS4wNDYgMTA3Ljg3NyAxMDcuODc3IDAgMCAwLTcuNTIgMzkuNjI4YzAgMzYuODQyIDE4LjQyMyA2OS4zNiA0Ni41NDQgODguOTAzLjMyNiAzLjI2NS41MTUgNi41Ny41MTUgOS45MjF6TTY3LjgyIDE1LjAxOGM0OS4xIDI0LjgxMSA4Mi43NjggNzUuNzExIDgyLjc2OCAxMzQuNDggMCA4My4xNjgtNjcuNDIgMTUwLjU4OC0xNTAuNTg4IDE1MC41ODh2LTQyLjM1M2M1OS43NzggMCAxMDguMjM1LTQ4LjQ1OSAxMDguMjM1LTEwOC4yMzUgMC0zNi44NS0xOC40My02OS4zOC00Ni41NjItODguOTI3YTk5Ljk0OSA5OS45NDkgMCAwIDEtLjQ5Ny05Ljg5NyA5OC41MTIgOTguNTEyIDAgMCAxIDYuNjQ0LTM1LjY1NnptMTU1LjI5MiAxODIuNzE4YzE3LjczNyAzNS41NTggNTQuNDUgNTkuOTk3IDk2Ljg4OCA1OS45OTd2NDIuMzUzYy02MS45NTUgMC0xMTUuMTYyLTM3LjQyLTEzOC4yOC05MC44ODZhMTU4LjgxMSAxNTguODExIDAgMCAwIDQxLjM5Mi0xMS40NjR6bS0xMC4yNi02My41ODlhOTguMjMyIDk4LjIzMiAwIDAgMS00My40MjggMTQuODg5QzE2OS42NTQgNzIuMjI0IDIyNy4zOSA4Ljk1IDMwMS44NDUuMDAzYzQuNzAxIDEzLjE1MiA3LjU5MyAyNy4xNiA4LjQ1IDQxLjcxNC01MC4xMzMgNC40Ni05MC40MzMgNDMuMDgtOTcuNDQzIDkyLjQzem01NC4yNzgtNjguMTA1YzEyLjc5NC04LjEyNyAyNy41NjctMTMuNDA3IDQzLjQ1Mi0xNC45MTEtLjI0NyA4Mi45NTctNjcuNTY3IDE1MC4xMzItMTUwLjU4MiAxNTAuMTMyLTIuODQ2IDAtNS42NzMtLjA4OC04LjQ4LS4yNDNhMTU5LjM3OCAxNTkuMzc4IDAgMCAwIDguMTk4LTQyLjExOGMuMDk0IDAgLjE4Ny4wMDguMjgyLjAwOCA1NC41NTcgMCA5OS42NjUtNDAuMzczIDEwNy4xMy05Mi44Njh6IiBmaWxsPSIjRkZGIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+)](https://moduscreate.com)

Source code and documentation for the BSides Orlando 2022 (11/18 - 11/19) talk: DevSecOps on a $ store budget

- [BSides Orlando 2022 Talk Details](#bsides-orlando-2022-talk-details)
- [Getting Started](#getting-started)
- [How it Works](#how-it-works)
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


## Local setup.

To kick the the tires on the application and the pipeline you can install Jenkins locally.

Jenkins install instructions can be found at: https://www.jenkins.io/doc/book/installing/

### MacOS (Brew)


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

The default plugin installation option presented initially should be sufficent for this talk. This will also allow you to 
setup a new admin user.
 


### Windows

TBD

### Linux

TBD



# How it works

{Describe how it works. Include images if possible.}

# Developing


## Prerequisites

If you want to follow along locally you will need:

1. Jenkins setup locally

2. A forked copy of the course code 

3. A bridgecrew account - you can set this up with your GitHub user


To follow along in the cloud, you will need:

1. An AWS account

2. A forked copy of the source code 

3. A bridgecrew account - you can set this up with your GitHub user

## Configure the Pipeline (Locally)

1. Fork and clone this repository (you'll need it shortly)

2. Login to Jenkins

3. Call your pipeline bsidesorlando2022

4. Description - add a description of your choosing

5. Under pipeline select `Pipeline script from SCM`

6. Select `Git` from SCM and add the repo location. Note, if you have a private fork you will need to enter login credentials 

7. Add the path to the Jenkinsfile 

8. Save the file. 

9. `Build Now`

10. Expect to see a few errors, as we need to generate an API key for Checkov.

## The PHP Application

Based off of a simple tutorial here: https://code.tutsplus.com/tutorials/how-to-build-a-simple-rest-api-in-php--cms-37000

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

5. ID: checkov-api-key

6. Description - say what it is

Pop up closes, set the `Default Value` to the BSides API Key 


Edit the Jenkins file and update the Checkov call to include your API key environment var name if you called it something different.


Run build with Parameters.

View Console log, should see some errors. We need to fix these!


### Cloc Stage

Will see files in repo.


### Checov stage

Will see errors in Terraform files.

These are:

<list>.

They are fixed by doing the following:


<fixes>


### PHPMetrics

https://phpmetrics.org/index.html

Install composer

Install PHpMetrics

Execute via Pipeline against target code base.



### Tartufo 

https://tartufo.readthedocs.io/en/stable/





## Contributing

{How can the community contribute}

# Modus Create

{replace PROJECT_NAME in links below with the name of this project}

[Modus Create](https://moduscreate.com) is a digital product consultancy. We use a distributed team of the best talent in the world to offer a full suite of digital product design-build services; ranging from consumer facing apps, to digital migration, to agile development training, and business transformation.

<a href="https://moduscreate.com/?utm_source=labs&utm_medium=github&utm_campaign=PROJECT_NAME"><img src="https://res.cloudinary.com/modus-labs/image/upload/h_80/v1533109874/modus/logo-long-black.svg" height="80" alt="Modus Create"/></a>
<br />

This project is part of [Modus Labs](https://labs.moduscreate.com/?utm_source=labs&utm_medium=github&utm_campaign=PROJECT_NAME).

<a href="https://labs.moduscreate.com/?utm_source=labs&utm_medium=github&utm_campaign=PROJECT_NAME"><img src="https://res.cloudinary.com/modus-labs/image/upload/h_80/v1531492623/labs/logo-black.svg" height="80" alt="Modus Labs"/></a>

# Licensing

This project is [MIT licensed](./LICENSE).
