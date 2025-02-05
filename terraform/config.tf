terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "om1mybucket"
    profile        = "Om_patel"
    encrypt        = "true"
    dynamodb_table = "mytable"
    key            = "log/terraform.tfstate"
    region         = "ca-central-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "ca-central-1"
  profile = "Om_patel"
}


