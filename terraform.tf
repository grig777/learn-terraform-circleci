terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "publicsq-test1234"

    workspaces {
      prefix = "learn-terraform-circleci-"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }

  required_version = ">= 1.2.0"
}

