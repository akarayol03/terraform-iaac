resource "aws_instance" "web" {
  count = 10
  ami             = "ami-00068cd7555f543d5"
  instance_type   = "t2.micro"
  associate_public_ip_address = "true"
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh"]
  user_data = file("userdata_file")
  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "HelloWorld${count.index +1}"
  }
}
resource "aws_instance" "imported" {
  ami             = "ami-00068cd7555f543d5"
  key_name        = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh"]
  instance_type  = "t2.micro"
}

