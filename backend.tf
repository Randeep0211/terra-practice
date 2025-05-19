// Remote Backend concept


terraform{
  backend "s3" {
    bucket = "classified-file"
    key    = "terra/terraform.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}