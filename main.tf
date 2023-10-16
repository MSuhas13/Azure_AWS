variable "aws_region" {
  type    = string
  default = "us-east-1"
}


provider "aws" {
    region = var.aws_region 
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"  
  tags = {
      Name = "TF-Instance-1"
  }
  lifecycle {
    create_before_destroy = true
  }
}
