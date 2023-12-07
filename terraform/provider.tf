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
    bucket         = "bucketkledin"
    key            = "terraform.tfstate"
    dynamodb_table = "tabelacp3"
    region         = "us-east-1"
  }

}

provider "aws" {
  region  = "us-east-1"
}




