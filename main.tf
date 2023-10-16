variable "aws_region" {
  type    = string
  default = "us-west-2"
}


provider "aws" {
    region = var.aws_region 
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"  
  tags = {
      Name = "TF-Instance-iac"
  }
  lifecycle {
    create_before_destroy = true
  }
}
