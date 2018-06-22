#####################################################################
##
##      Created 6/22/18 by ucdpadmin. for camproject7
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}