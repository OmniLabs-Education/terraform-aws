terraform {
  required_version = "1.4.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf01"
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "terraformtest12391826309127"

  tags = {
    Name = "teste2"
  }
}

resource "aws_s3_bucket" "my-new-bucket" {
  bucket = "meubucketnovo123791627389"

  tags = {
    cretead_at = "17/05/2023"
    name       = "bucket novo"
    test       = "teste"
  }
}