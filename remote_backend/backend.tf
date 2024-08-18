terraform {
  backend "s3" {
    bucket = "kshitij-practice-remote-backend-bucket"
    key    = "kshitij/terraform.tfstate"
    region = "us-east-1"
  }
}
