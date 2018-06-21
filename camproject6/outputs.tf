#####################################################################
##
##      Created 6/21/18 by ucdpadmin. for camproject6
##
#####################################################################

output "web_server_ip_address" {
  value = "${aws_instance.web-server.public_ip}"
}