#####################################################################
##
##      Created 5/9/18 by ucdpadmin. for demoproject
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}