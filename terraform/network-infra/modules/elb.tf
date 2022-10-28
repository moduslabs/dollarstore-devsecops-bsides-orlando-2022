 resource "aws_elb" "jenkins_elb" { 
    subnets = [for subnet in aws_subnet.public_subnets : subnet.id]
    cross_zone_load_balancing = true 
    security_groups = [aws_security_group.elb.id] 
     instances = [aws_instance.jenkins_main.id]

    listener { 
        instance_port     = 8080
        instance_protocol = "http"
        lb_port           = 80
        lb_protocol       = "http"
     } 
    
     health_check { 
     	healthy_threshold   = 2 
        unhealthy_threshold = 2 
        timeout             = 3 
        target              = "TCP:8080"    
        interval            = 5 
    } 
   
    tags = { 
    	Name = "jenkins_elb" 
    } 
 } 
 
 output "load-balancer-ip" { 
 	value = aws_elb.jenkins_elb.dns_name 
 }
