resource "aws_security_group" "elb" { 
    name   = "ecs-elb-security-group" 
    vpc_id = var.vpc_id 
    
    ingress { 
    	protocol    = "tcp" 
        from_port   = 80 
        to_port     = 80 
        cidr_blocks = ["0.0.0.0/0"] 
     } 
     egress { 
     	from_port   = 0 
        to_port     = 0 
        protocol    = "-1" 
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
        security_groups = [aws_security_group.bastion_host_sg.id]
    }

    ingress { 
        from_port = "8080"
        to_port  = "8080"
        protocol = "tcp"
        security_groups = [aws_security_group.elb.id]
    }

    ingress { 
        from_port = "8080"
        to_port = "8080"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
 
    egress { 
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
       Name = "jenkins_master_sg"
   }
}

