resource "random_string" "bucket_suffix" {
  length  = 6
  upper   = false
  special = false
  numeric = true
}

locals {
  normalized_region    = regexreplace(lower(var.region), "[^a-z0-9-]", "-")
  resolved_bucket_name = var.bucket_name != null ? var.bucket_name : "${var.bucket_name_prefix}-${local.normalized_region}-${random_string.bucket_suffix.result}"
}

resource "aws_s3_bucket" "this" {
  bucket        = local.resolved_bucket_name
  force_destroy = var.force_destroy

  tags = var.tags
}
