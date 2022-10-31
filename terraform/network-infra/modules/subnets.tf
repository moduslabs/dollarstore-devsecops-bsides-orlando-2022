resource "aws_subnet" "public_subnets" { 
    #checkov:skip=CKV_AWS_130:Disable rule as an example
    vpc_id  = var.vpc_id
    cidr_block = cidrsubnet(var.vpc_cidr_block, 8, 2 + count.index)
    availability_zone  = sort(var.availability_zones)[count.index]
    map_public_ip_on_launch = true
    count  = var.public_subnets_count
    
    tags = { 
    	Name = "jenkins-server-public-subnet" 
   }
}

resource "aws_subnet" "private_subnets" {
    vpc_id = var.vpc_id
    cidr_block = cidrsubnet(var.vpc_cidr_block, 8, count.index)
    availability_zone = sort(var.availability_zones)[count.index]
    map_public_ip_on_launch = false
    count = var.private_subnets_count

    tags = {
        Name = "jenkins-server-private-subnet"
    }
 }
