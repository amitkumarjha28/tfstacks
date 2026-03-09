identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "prod" {
  inputs = {
    environment            = "prod"
    region                 = "us-east-1"
    regions                = ["us-east-1"]
    role_arn               = "arn:aws:iam::795939425714:role/tfc-hashicorp-wwtfo-demo-platform-prod-hc-amit-kumarjha-role"
    identity_token         = identity_token.aws.jwt
    default_tags           = {
      Environment = "prod"
      ManagedBy   = "terraform"
      Stack       = "tfstacks"
    }
    instance_name          = "prod-app-server"
    ami_id                 = null
    instance_type          = "t3.micro"
    subnet_id              = null
    vpc_security_group_ids = []
    bucket_name            = null
    bucket_name_prefix     = "tfstacks-prod-amitjha28-demo"
    bucket_force_destroy   = false
  }
}

deployment "qa" {
  inputs = {
    environment            = "qa"
    region                 = "us-west-2"
    regions                = ["us-west-2"]
    role_arn               = "arn:aws:iam::795939425714:role/tfc-hashicorp-wwtfo-demo-platform-qa-hc-amit-kumarjha-role"
    identity_token         = identity_token.aws.jwt
    default_tags           = {
      Environment = "qa"
      ManagedBy   = "terraform"
      Stack       = "tfstacks"
    }
    instance_name          = "qa-app-server"
    ami_id                 = null
    instance_type          = "t3.micro"
    subnet_id              = null
    vpc_security_group_ids = []
    bucket_name            = null
    bucket_name_prefix     = "tfstacks-qa-amitjha28-demo"
    bucket_force_destroy   = true
  }
}
