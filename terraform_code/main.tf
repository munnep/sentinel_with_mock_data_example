terraform {
  cloud {
    organization = "patrickmunne"

    workspaces {
      name = "sentinel_mock_files"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "example2" {
  bucket = "patrick-test-bucket-sentinel"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
