provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "jenkinsprojectbucket" {
  bucket = "jenkins-project-s3-bucket"
  acl = "private"
}