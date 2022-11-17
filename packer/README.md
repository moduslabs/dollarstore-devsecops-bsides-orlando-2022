# Packer Images

These files can be used to build a new Packer image with Jenkins baked in.

This can then be deployed in an an AWS environment.


## Install

Make sure you have Packer instaleld locally on your device.

## Configuration

Update the `variable.json` locally (do not commit to your fork!) with the details of your AWS account.

## Build

To build the new AMI run:

```
packer build -var-file="variable.json" packer.json
```

The file includes support for Docker containers:

```
sudo yum install docker
sudo usermod -a -G docker jenkins
sudo systemctl start docker
```
