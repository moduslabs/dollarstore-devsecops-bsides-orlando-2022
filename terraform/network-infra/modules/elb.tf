 resource "aws_elb" "jenkins_elb" { 
    subnets = [for subnet in aws_subnet.public_subnets : subnet.id]
    cross_zone_load_balancing = true 
    security_groups = [aws_security_group.elb.id] 
    instances = [aws_instance.jenkins_main.id]

    listener { 
        instance_port     = 8080
        instance_protocol = "http"
        lb_port           = 443
        lb_protocol       = "https"
        ssl_certificate_id = var.ssl_cert_arn
     } 
    
     health_check { 
     	healthy_threshold   = 2 
        unhealthy_threshold = 2 
        timeout             = 3 
        target              = "TCP:8080"    
        interval            = 5 
    } 
 
    access_logs {
        bucket  = aws_s3_bucket.log_bucket.bucket
        enabled = true
    }

  
    tags = { 
    	Name = "jenkins_elb" 
    } 
 } 
 
 output "load-balancer-ip" { 
 	value = aws_elb.jenkins_elb.dns_name 
 }
