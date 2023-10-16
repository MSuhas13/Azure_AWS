provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0f5ee92e2d63afc18" # ap-south-1
  instance_type = "t2.micro"  
   tags = {
      Name = "TF-Server"
  }
}
