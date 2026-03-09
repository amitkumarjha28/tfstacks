locals {
  common_tags = {
    ManagedBy = "terraform"
    Stack     = "tfstacks"
  }
}

component "ec2" {
  source = "./modules/ec2"

  inputs = {
    instance_name          = var.instance_name
    ami_id                 = var.ami_id
    instance_type          = var.instance_type
    subnet_id              = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    tags                   = merge(local.common_tags, { Environment = deployment.name })
  }

  providers = {
    aws = provider.aws.this
  }
}

component "s3" {
  source = "./modules/s3"

  inputs = {
    bucket_name        = var.bucket_name
    bucket_name_prefix = var.bucket_name_prefix
    region             = var.region
    force_destroy      = var.bucket_force_destroy
    tags               = merge(local.common_tags, { Environment = deployment.name })
  }

  providers = {
    aws    = provider.aws.this
    random = provider.random.this
  }
}
