provider "aws" {
region = "ap-southeast-2"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0f71013b2c8bd2c29"
instance_type = "t2.medium"
key_name = "one"
vpc_security_group_ids = ["sg-05f044979e305302e"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
