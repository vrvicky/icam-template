#####################################################################
##
##      Created 8/2/18 by admin. for CAMProject2
##
#####################################################################


variable "aws_region" {
  type = "string"
  description = "Generated"
 default     = "us-west-1"
}
variable "web-server_ami" {
  type = "string"
  description = "Generated"
}

variable "web-server_aws_instance_type" {
  type = "string"
  description = "Generated"
}

variable "availability_zone" {
  type = "string"
  description = "Generated"
}

variable "web-server_name" {
  type = "string"
  description = "Generated"
}

variable "subnet_id" {
  type = "string"
  description = "Generated"
}

variable "security_group_id" {
  type = "string"
  description = "The associated security groups."
}

