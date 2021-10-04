terraform {
  backend "remote" {
    organization = "asahi-iwase-engineer"

    workspaces {
      name = "christchurches-map-infra"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}
