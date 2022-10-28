resource "aws_internet_gateway" "igw_jenkins" { 
    vpc_id = var.vpc_id
    tags = {
    	Name = "igw_jenkins"
   }
}

resource "aws_route_table" "public_route_table" {
    vpc_id = var.vpc_id
    route {
    	cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw_jenkins.id
    }
    tags = {
        Name = "public_route_table_jenkins" 
   }
}

resource "aws_route_table_association" "public" {
    count = var.public_subnets_count 
    subnet_id = element(aws_subnet.public_subnets.*.id, count.index)
    route_table_id = aws_route_table.public_route_table.id
}
