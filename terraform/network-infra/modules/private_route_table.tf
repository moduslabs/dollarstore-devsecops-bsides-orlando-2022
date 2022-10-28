resource "aws_eip" "nat_gateway_eip" { 
    vpc = true
    tags = {
    	Name = "nat_gateway_eip" 
    }
}

resource "aws_nat_gateway" "nat_gateway" {
    allocation_id = aws_eip.nat_gateway_eip.id
    subnet_id = element(aws_subnet.public_subnets.*.id, 0)

    tags = {
        Name = "nat_gateway"
    }
}

resource "aws_route_table" "private_route_table" {
    vpc_id = var.vpc_id

     route {
    	cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_gateway.id
     }

     tags = { 
         Name  = "private_route_table_jenkins_server"
     }
} 

resource "aws_route_table_association" "private" { 
    count = var.private_subnets_count
    subnet_id = element(aws_subnet.private_subnets.*.id, count.index)
    route_table_id = aws_route_table.private_route_table.id
}
