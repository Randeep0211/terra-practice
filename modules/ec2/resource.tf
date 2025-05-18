resource "aws_instance" "terra-rep" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type

  tags = {
    Name = var.aws_instance_tag
  }
}