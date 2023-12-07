# PROVIDER
terraform {

  required_version = "~> 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.34"
    }
  }

  backend "s3" {
    bucket         = "tf-exame"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-exame"
    region         = "us-east-1"
  }

}

provider "aws" {
  region  = "us-east-1"
}


