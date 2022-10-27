variable "aws_region" { 
    default = "us-east-1" 
 } 
variable "aws_secret_key" {} 
variable "aws_access_key" {} 
variable "aws_token" {}

provider "aws" { 
    region = var.aws_region 
    access_key = var.aws_access_key 
    secret_key = var.aws_secret_key 
    token = var.aws_token
} 

resource "aws_s3_bucket" "terraform_state" { 
    bucket = "bsides-orlando-terraform-state"

    #checkov:skip=CKV_AWS_144:Not including cross-region replication as an example
    lifecycle { 
        prevent_destroy = true 
    } 
}


resource "aws_s3_bucket_versioning" "state_versioning" { 
    bucket = aws_s3_bucket.terraform_state.id

    versioning_configuration {
        status = "Enabled"
    }   
} 

resource "aws_s3_bucket_public_access_block" "protect_state_bucket" {
     bucket = aws_s3_bucket.terraform_state.id

     block_public_acls       = true
     block_public_policy     = true
     ignore_public_acls      = true
     restrict_public_buckets = true
}


resource "aws_s3_bucket_server_side_encryption_configuration" "state_encryption"{
    bucket = aws_s3_bucket.terraform_state.bucket
    rule { 
        apply_server_side_encryption_by_default { 
            sse_algorithm = "AES256" 
        } 
    } 
}


/**
Adding some example logging infrastructure 
which can be used to demonstrate a Checkov rule fail
when disabled
**/
resource "aws_s3_bucket" "log_bucket" {
    bucket = "log-bucket"
}

resource "aws_s3_bucket_acl" "log_bucket_acl" {
    bucket = aws_s3_bucket.log_bucket.id
    acl = "log-delivery-write"
}

resource "aws_s3_bucket_logging" "log_mapping" {
  bucket = aws_s3_bucket.terraform_state.id

  target_bucket = aws_s3_bucket.log_bucket.id
  target_prefix = "log/"
}


