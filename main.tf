provider "aws" {
  access_key = ""
  secret_key = ""

  
}

resource "aws_s3_bucket" "jenkins-project-s3-bucket" {
  bucket = "jenkins-project-s3-bucket"
  acl = "private"
}