resource "aws_s3_bucket" "b" { 
  bucket = "my-tf-test-bucket-ahmet" 
  acl    = "private" 
} 
 versioning { 
    enabled = true 
 } 
} 
