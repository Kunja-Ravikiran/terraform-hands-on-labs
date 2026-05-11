provider "aws" {
  region = "ap-south-1"
}

variable "instance_type" {
  type = map(string)

  default = {
    dev   = "t2.micro"
    stage = "t2.medium"
    prod  = "t2.large"
  }
}

resource "aws_instance" "demo" {
  ami = "ami-07a00cf47dbbc844c"

  instance_type = lookup(
    var.instance_type,
    terraform.workspace,
    "t2.micro"
  )

  tags = {
    Name = terraform.workspace
  }
}