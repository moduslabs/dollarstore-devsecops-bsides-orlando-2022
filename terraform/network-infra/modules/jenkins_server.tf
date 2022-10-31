data "aws_ami" "jenkins_ami" { 
    most_recent = true 
    owners = ["self"] 
} 

resource "aws_key_pair" "jenkins_key" {
    key_name   = "jenkins-key"
    public_key = var.public_key
}

resource "aws_instance" "jenkins_main" { 
    ami  = data.aws_ami.jenkins_ami.id
    instance_type = "t2.large"
    key_name = aws_key_pair.jenkins_key.key_name
    vpc_security_group_ids = [aws_security_group.jenkins_main_sg.id]
    subnet_id = element(aws_subnet.private_subnets, 0).id
    monitoring = true
    ebs_optimized = true
    root_block_device { 
        volume_type = "gp3" 
        volume_size = 30 
        delete_on_termination = false 
    }
    metadata_options {
        http_endpoint = "enabled"
        http_tokens   = "required"
    }


    tags = {
    	Name = "Jenkins Server Main"
     }
}
