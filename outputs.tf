output "public_ip" {
  description = "Value for ip"
  value = aws_instance.terra-rep.public_ip
}