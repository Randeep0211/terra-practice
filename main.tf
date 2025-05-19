provider "aws" {
  region  = "ap-south-1"
}

# module "ec2_instance" {
#   source = "./modules/ec2"
#   aws_region = "ap-south-1"
#   aws_ami = "ami-0e35ddab05955cf57"
#   aws_instance_type = "t2.micro"
#   aws_instance_tag = "terra-demo"
# }

module "ec2_instance" {
  source = "./modules/ec2"
  aws_region = "ap-south-1"
  aws_ami = "ami-0e35ddab05955cf57"
  aws_instance_type = "t2.micro"
  aws_instance_tag = "terra-dedha"
}