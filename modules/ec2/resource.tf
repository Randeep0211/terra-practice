
resource "aws_key_pair" "infra-grey-key" {
  key_name   = "infra-grey-key"
  public_key = file("C:\\Users\\ASUS\\Desktop\\Terra-practice\\keys\\terra_rsa.pub")
}

resource "aws_instance" "terra-rep" {
  key_name = aws_key_pair.infra-grey-key.key_name
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
  count = 2
}

