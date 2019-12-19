terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "infrastructure"
    region = "us-east-1"
  }
}