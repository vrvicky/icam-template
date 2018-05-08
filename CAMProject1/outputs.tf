#####################################################################
##
##      Created 5/8/18 by ucdpadmin. for CAMProject1
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}
