output "vpc_id" { 
    value = aws_vpc.jenkins_vpc.id 
}

output "vpc_cidr_block" { 
    value = aws_vpc.jenkins_vpc.cidr_block 
}

output "load-balancer-ip" { 
    value = module.subnet_module.load-balancer-ip
}
