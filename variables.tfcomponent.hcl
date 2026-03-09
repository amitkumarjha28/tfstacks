variable "region" {
  type = string
}

variable "regions" {
  type    = set(string)
  default = []
}

variable "role_arn" {
  type = string
}

variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "default_tags" {
  type    = map(string)
  default = {}
}

variable "environment" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "ami_id" {
  type = string
  default = null
}

variable "instance_type" {
  type = string
}

variable "subnet_id" {
  type = string
  default = null
}

variable "vpc_id" {
  type    = string
  default = null
}

variable "allowed_cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
variable "vpc_security_group_ids" {
  type = list(string)
}

variable "bucket_name" {
  type = string
  default = null
}

variable "bucket_name_prefix" {
  type = string
}

variable "bucket_force_destroy" {
  type = bool
}
