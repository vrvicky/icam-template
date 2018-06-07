#####################################################################
##
##      Created 6/7/18 by ucdpadmin. for camproject5
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}