#####################################################################
##
##      Created 8/2/18 by admin. for CAMCMAteam
##
#####################################################################

 output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}