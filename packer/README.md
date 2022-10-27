
To build the new AMI:

packer build -var-file="variable.json" packer.json


To include support for Docker containers, add:

```
sudo yum install docker
sudo usermod -a -G docker jenkins
sudo systemctl start docker
```
