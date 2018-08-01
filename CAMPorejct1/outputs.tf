#####################################################################
##
##      Created 8/1/18 by admin. for CAMPorejct1
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}