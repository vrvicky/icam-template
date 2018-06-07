#####################################################################
##
##      Created 6/7/18 by ucdpadmin. for CAMProject4
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}
