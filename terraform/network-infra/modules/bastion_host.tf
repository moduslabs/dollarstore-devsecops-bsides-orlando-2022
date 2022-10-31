resource "aws_security_group" "bastion_host_sg" {
    name   = "bastion-host-security-group"
    description = "Allow inbound traffic on port 22"
    vpc_id = var.vpc_id
   
    ingress {
        protocol  = "tcp"
        description = "Allow ingress from example VPN IP"
        from_port = 22
        to_port  = 22
        cidr_blocks = ["50.197.6.145/32"] /*change to your IP after deployment via the console*/
    }

    egress {
        protocol  = -1
        description = "Allow access back out to the Internet"
        from_port = 0
        to_port   = 0
        cidr_blocks = ["0.0.0.0/0"] 
    }
    tags = {
        Name = "SG Bastion Host Jenkins" 
   }
} 


resource "aws_key_pair" "bastion_host_key" {
    key_name = "bastion-host-jenkins-key"
    public_key = var.public_key
} 
 
data "aws_ssm_parameter" "linux2_ami" {
    name = "/aws/service/ami-amazon-linux-latest/amzn-ami-hvm-x86_64-ebs" 
}

resource "aws_instance" "bastion_host_server" { 
    #checkov:skip=CKV_AWS_88:Public IP for connection to bastion host
    ami = data.aws_ssm_parameter.linux2_ami.value 
    key_name  = aws_key_pair.bastion_host_key.key_name
    instance_type = "t3.nano"
    associate_public_ip_address = true
    subnet_id = element(aws_subnet.public_subnets, 0).id
    vpc_security_group_ids = [aws_security_group.bastion_host_sg.id]
    monitoring = true
    ebs_optimized = true

    metadata_options {
        http_endpoint = "enabled"
        http_tokens   = "required"
    }

    tags = {
    	Name = "jenkins-bastion-host" 
    }
}

output "BastionHostIP" { value = aws_instance.bastion_host_server.public_ip }
