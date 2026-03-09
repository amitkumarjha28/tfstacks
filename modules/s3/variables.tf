variable "bucket_name" {
  description = "Exact S3 bucket name. If null, bucket_name_prefix with random suffix is used"
  type        = string
  default     = null
}

variable "bucket_name_prefix" {
  description = "S3 bucket name prefix used when bucket_name is null"
  type        = string
  default     = "tfstacks-bucket"
}

variable "region" {
  description = "AWS region used in generated bucket names when bucket_name is null"
  type        = string
}

variable "force_destroy" {
  description = "Allow deleting non-empty bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}
