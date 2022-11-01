resource "aws_security_group" "elb" {
    name   = "ecs-elb-security-group"
    description = "Load balancer SG for Jenkins and Bastion traffic"
    vpc_id = var.vpc_id 

    #checkov:skip=CKV_AWS_260:Allow traffic between the ELB and Jenkins instance on port 80    
    ingress { 
        protocol    = "tcp" 
        description = "Access on port 80 to Jenkins"
        from_port   = 443
        to_port     = 443
        cidr_blocks = ["0.0.0.0/0"] 
     } 
     egress { 
        from_port   = 0
        to_port     = 0 
        protocol    = "-1"
        description = "Allow outbound traffic" 
        cidr_blocks = ["0.0.0.0/0"] 
     } 

     lifecycle {
        create_before_destroy = true
     }
    
     tags = { 
     	Name = "elb-sg" 
      } 
}

resource "aws_security_group" "jenkins_main_sg" { 
    name  = "jenkins_main_sg"
    description = "Allow ingress traffic on ports 8080 and 22"
    vpc_id  = var.vpc_id

    ingress { 
        from_port = "22" 
        to_port = "22" 
        protocol = "tcp" 
        description = "SSH traffic for admin"
        security_groups = [aws_security_group.bastion_host_sg.id]
    }

    ingress { 
        from_port = "8080"
        to_port  = "8080"
        protocol = "tcp"
        description = "Allow traffic to server"
        security_groups = [aws_security_group.elb.id]
    }

    ingress { 
        from_port = "8080"
        to_port = "8080"
        protocol = "tcp"
        description = "Allow traffic to server"
        cidr_blocks = ["0.0.0.0/0"]
    }
 
    egress { 
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        description = "Allow traffic to internet"
        cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
       Name = "jenkins_master_sg"
   }
}

