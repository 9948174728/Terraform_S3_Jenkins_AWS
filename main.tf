# provider "aws" {
#   access_key = ""
#   secret_key = ""
#   region = "us-east-1"
# }

provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "aws_s3_bucket" "jenkins-project-s3-bucket" {
  bucket = "jenkins-project-s3-bucket"
  acl = "private"
}