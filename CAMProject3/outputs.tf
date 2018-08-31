#####################################################################
##
##      Created 8/31/18 by admin. for CAMProject3
##
#####################################################################

 output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}
