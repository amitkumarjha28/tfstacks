deployment "prod" {
  inputs = {
    environment            = "prod"
    region                 = "us-east-1"
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
