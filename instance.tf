resource "aws_instance" "web" { 
  ami           = "ami-00068cd7555f543d5" 
  instance_type = "t2.micro" 
  associate_public_ip_address = true
  key_name = aws_key_pair.deployer.key_name
  root_block_device {
      volume_size = 25
  }
  user_data = file("userdata_file")
  
tags = { 
    Name = "web" 
  } 
}
