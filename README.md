# DevSecOps on a $ store budget

[![MIT Licensed](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](./LICENSE)
[![Powered by Modus_Create](https://img.shields.io/badge/powered_by-Modus_Create-blue.svg?longCache=true&style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMzIwIDMwMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBkPSJNOTguODI0IDE0OS40OThjMCAxMi41Ny0yLjM1NiAyNC41ODItNi42MzcgMzUuNjM3LTQ5LjEtMjQuODEtODIuNzc1LTc1LjY5Mi04Mi43NzUtMTM0LjQ2IDAtMTcuNzgyIDMuMDkxLTM0LjgzOCA4Ljc0OS01MC42NzVhMTQ5LjUzNSAxNDkuNTM1IDAgMCAxIDQxLjEyNCAxMS4wNDYgMTA3Ljg3NyAxMDcuODc3IDAgMCAwLTcuNTIgMzkuNjI4YzAgMzYuODQyIDE4LjQyMyA2OS4zNiA0Ni41NDQgODguOTAzLjMyNiAzLjI2NS41MTUgNi41Ny41MTUgOS45MjF6TTY3LjgyIDE1LjAxOGM0OS4xIDI0LjgxMSA4Mi43NjggNzUuNzExIDgyLjc2OCAxMzQuNDggMCA4My4xNjgtNjcuNDIgMTUwLjU4OC0xNTAuNTg4IDE1MC41ODh2LTQyLjM1M2M1OS43NzggMCAxMDguMjM1LTQ4LjQ1OSAxMDguMjM1LTEwOC4yMzUgMC0zNi44NS0xOC40My02OS4zOC00Ni41NjItODguOTI3YTk5Ljk0OSA5OS45NDkgMCAwIDEtLjQ5Ny05Ljg5NyA5OC41MTIgOTguNTEyIDAgMCAxIDYuNjQ0LTM1LjY1NnptMTU1LjI5MiAxODIuNzE4YzE3LjczNyAzNS41NTggNTQuNDUgNTkuOTk3IDk2Ljg4OCA1OS45OTd2NDIuMzUzYy02MS45NTUgMC0xMTUuMTYyLTM3LjQyLTEzOC4yOC05MC44ODZhMTU4LjgxMSAxNTguODExIDAgMCAwIDQxLjM5Mi0xMS40NjR6bS0xMC4yNi02My41ODlhOTguMjMyIDk4LjIzMiAwIDAgMS00My40MjggMTQuODg5QzE2OS42NTQgNzIuMjI0IDIyNy4zOSA4Ljk1IDMwMS44NDUuMDAzYzQuNzAxIDEzLjE1MiA3LjU5MyAyNy4xNiA4LjQ1IDQxLjcxNC01MC4xMzMgNC40Ni05MC40MzMgNDMuMDgtOTcuNDQzIDkyLjQzem01NC4yNzgtNjguMTA1YzEyLjc5NC04LjEyNyAyNy41NjctMTMuNDA3IDQzLjQ1Mi0xNC45MTEtLjI0NyA4Mi45NTctNjcuNTY3IDE1MC4xMzItMTUwLjU4MiAxNTAuMTMyLTIuODQ2IDAtNS42NzMtLjA4OC04LjQ4LS4yNDNhMTU5LjM3OCAxNTkuMzc4IDAgMCAwIDguMTk4LTQyLjExOGMuMDk0IDAgLjE4Ny4wMDguMjgyLjAwOCA1NC41NTcgMCA5OS42NjUtNDAuMzczIDEwNy4xMy05Mi44Njh6IiBmaWxsPSIjRkZGIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+)](https://moduscreate.com)

Source code and documentation for the BSides Orlando 2022 (11/18 - 11/19) talk: DevSecOps on a $ store budget

- [Getting Started](#getting-started)
- [How it Works](#how-it-works)
- [Developing](#developing)
  - [Prerequisites](#prerequisites)
  - [Testing](#testing)
  - [Contributing](#contributing)
- [Modus Create](#modus-create)
- [Licensing](#licensing)


# BSides Orlando 2022 Talk Outline 

##Title: DevSecOps on a $ store budget


##Abstract

Security tooling can be expensive, very expensive. Never fear though, there are a multitude of cheap and open source options out there. You too can build a robust DevSecOps pipeline on a dollar store budget.

Covering everything from open source SAST tools to free secret scanning and Infrastructure-as-Code audits, this talk walks you through options to build out CI/CD pipelines that help to secure your code base without taking out a second mortgage.

Some basic knowledge of DevOps and CI/CD would be useful but is not mandatory.

##Description

This talk will walk the audience through how to build a variety of simple CI/CD pipelines with Jenkins and GitHub Actions. The CI/CD pipeline will demonstrate how to incorporate a number of security and code analysis tools including:

*Cloc - What’s in the repository?
*Checkov - Bridgecrews free IaC scanner
*PHPMetrics - considering Cyclomatic Complexity from a security perspective
*Tortufo - GoDaddy’s free Secrets Scanning tool
*Git-secrets - Prevent your AWS secrets from hitting the repository
*CodeQL and Dependabot - free scanning of open source repos in GitHub

The talk will then wrap up by looking at Horusec an open source SAST platform that incorporates a variety of security and linting tools in a container based environment.

An example PHP application using Terraform Infrastructure-as-Code targeting an AWS environment will be used to demo the DevSecOps process to the audience. This code can be downloaded during the talk to allow participants to follow along in a hands on fashion.

##Talk outline:

*Introduction
*What is DevSecOps
*Commercial tools aren't the only option
*Jenkins overview
*A walk through our example repository
*Scanning a repository with cloc
*Reviewing Terraform with Checkov
*Auditing PHP with PHPMetrics
*Scan for secrets using Tortufo
*Pre-commit hooks with git-secrets
*Open source Shift Left with GitHub
*Wrapping up with Horusec
*Closing statement
*QA



# Getting Started

{Minimal steps required for a quick software trial.}

```js
import { Fantastico } from '@modus/awesome-solution';

const amazing = new Fantastico();

export default amazing;
```

# How it works

{Describe how it works. Include images if possible.}

# Developing

{Show how engineers can set up a development environment and contribute.}

## Prerequisites

{Explain the prerequisites}

## Testing

{Notes on testing}

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
