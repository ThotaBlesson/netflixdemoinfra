provider "aws" {
region = "ap-southeast-2"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-084e237ffb23f8f97"
instance_type = "t2.medium"
key_name = "one"
vpc_security_group_ids = ["sg-06f148abbd53d5dc1"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
