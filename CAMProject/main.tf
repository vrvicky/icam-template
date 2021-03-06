#####################################################################
##
##      Created 5/8/18 by ucdpadmin. for CAMProject
##
#####################################################################

## REFERENCE {"default-vpc":{"type": "aws_reference_network"}}

terraform {
  required_version = "> 0.8.0"
}

provider "aws" {
 
  version = "~> 1.8"
}


data "aws_subnet" "subnet" {
  vpc_id = "${var.vpc_id}"  # Generated
  availability_zone = "${var.availability_zone}"  # Generated
  
}

data "aws_security_group" "group_name" {
  name = "${var.group_name}"
  vpc_id = "${var.vpc_id}"  # Generated
}

resource "aws_instance" "web_server" {
  ami = "${var.web_server_ami}"
  key_name = "${aws_key_pair.auth.id}"
  instance_type = "${var.web_server_aws_instance_type}"
  availability_zone = "${var.availability_zone}"
  subnet_id  = "${data.aws_subnet.subnet.id}"
  vpc_security_group_ids = ["${data.aws_security_group.group_name.id}"]
  tags {
    Name = "${var.web_server_name}"
  }
}

resource "tls_private_key" "ssh" {
    algorithm = "RSA"
}

resource "aws_key_pair" "auth" {
    key_name = "aws-temp-public-key"
    public_key = "${tls_private_key.ssh.public_key_openssh}"
}