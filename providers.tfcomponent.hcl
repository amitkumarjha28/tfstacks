required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.6"
  }
}

provider "aws" "this" {
  config {
    region = var.region
  }
}

provider "random" "this" {
  config {}
}
