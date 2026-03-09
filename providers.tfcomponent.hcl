required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.0"
  }
}

locals {
  aws_regions = length(var.regions) > 0 ? var.regions : toset([var.region])
}

provider "aws" "configurations" {
  for_each = local.aws_regions

  config {
    region = each.value

    assume_role_with_web_identity {
      role_arn           = var.role_arn
      web_identity_token = var.identity_token
    }

    default_tags {
      tags = var.default_tags
    }
  }
}

provider "random" "this" {
  config {}
}
