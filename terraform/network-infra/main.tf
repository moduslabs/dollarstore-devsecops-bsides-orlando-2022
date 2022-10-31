variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_access_token" {}
variable "public_key"{}
variable "availability_zones" {}
variable "aws_region" {}
variable "cidr_block" {}
variable "private_subnets_count" {}
variable "public_subnets_count" {}
variable "ssl_cert_arn" {}


provider "aws" { 
    region = var.aws_region 
    access_key = var.aws_access_key 
    secret_key = var.aws_secret_key
    token = var.aws_access_token 
} 

terraform { 
    backend "s3" { 
        bucket  = "bsides-orlando-terraform-state" 
        key     = "dollarstore-devsecops-bsides-orlando-2022/jenkins-server/network/terraform.tfstate" 
        region  = "us-east-1"
        encrypt = true
   }
} 

module "subnet_module" { 
    source = "./modules"
    vpc_id = aws_vpc.jenkins_vpc.id 
    vpc_cidr_block = aws_vpc.jenkins_vpc.cidr_block 
    availability_zones = var.availability_zones 
    public_subnets_count = var.public_subnets_count 
    private_subnets_count = var.private_subnets_count
    public_key = var.public_key
    ssl_cert_arn = var.ssl_cert_arn
 }


resource "aws_vpc" "jenkins_vpc" { 
    #checkov:skip=CKV2_AWS_12:Example rule disabling
    #checkov:skip=CKV2_AWS_11:Disable flow logs
    cidr_block  = var.cidr_block 
    enable_dns_support = true 
    enable_dns_hostnames = true
    tags = {
        Name = "jenkins-server-vpc" 
    }
}
