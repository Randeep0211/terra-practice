terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
   backend "s3" {
    bucket = "classified-file"
    key    = "terra/terraform.tfstate"
    region = "us-east-2"
  }
}