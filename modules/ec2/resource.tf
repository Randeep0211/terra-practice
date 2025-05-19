resource "aws_instance" "terra-rep" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type

  tags = {
    Name = var.aws_instance_tag
  }
  root_block_device {
    volume_size = 12
    volume_type = "gp3"
    delete_on_termination = true
  }
}