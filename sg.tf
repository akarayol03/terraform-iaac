resource "aws_security_group" "allow_ssh" { 
  name        = "allow_ssh" 
  description = "Allow TLS inbound traffic" 
  vpc_id      = "vpc-ebd1ac91" 

  ingress { 
    from_port   = 22
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

} 

egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 