terraform {
  backend "s3" {
    bucket = "backend-state-ahmet-tf"
    key    = "infrastructure"
    region = "us-east-1"
  }
}