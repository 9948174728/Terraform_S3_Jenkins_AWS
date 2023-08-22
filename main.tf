provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "c" {
    bucket = "we bucket 01"
    acl = "private"

    tags = {
        Name = "our bucket"
        Environment = "DevJKT"
    }
}
