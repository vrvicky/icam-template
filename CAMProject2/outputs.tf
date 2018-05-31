#####################################################################
##
##      Created 5/31/18 by ucdpadmin. for CAMProject2
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}