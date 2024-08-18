provider "aws" {
  region = "us-east-1"
}

#creating an ec2 instance for example
resource "aws_instance" "example_ec2_instance" {
  ami                     = "ami-0dcc1e21636832c5d"
  instance_type           = "t2.micro"
}

#creating a s3 bucket to use as backend
resource "aws_s3_bucket" "example" {
  bucket = "kshitij-practice-remote-backend-bucket"

  tags = {
    Name        = "KJ's bucket"
    Environment = "Dev"
  }
}
