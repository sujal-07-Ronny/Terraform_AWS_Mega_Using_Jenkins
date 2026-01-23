output "website_url" {
  value = "http://${aws_instance.web_ec2.public_ip}"
}
output "ec2_public_ip" {
  value = aws_instance.web_ec2.public_ip
}