#####################################################################
##
##      Created 5/8/18 by ucdpadmin. for CAMProject
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web_server.public_ip}"
}