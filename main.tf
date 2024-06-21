
provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-05ff45cfa6792bcbc"
  instance_type = "t2.micro"
}
