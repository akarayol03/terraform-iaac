#Go to region 2'
provider "aws" {
    region = "us-east-2" 

} 
# Search for Ubuntu Latest with the owner
data "aws_ami" "ubuntu" {
     filter { 
         name = "root-device-type" 
         values = ["ebs"] 
         }

    most_recent = true
    owners = ["099720109477"] 

} 
#Show the AMI id
output "ami" {
    value = "${data.aws_ami.ubuntu.id}" 

} 

resource "aws_instance" "web" {
    ami           = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"
    
    tags = {
    Name = "HelloWorld"
  }
}
