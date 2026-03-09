output "ec2_instance_id" {
  type  = string
  value = component.ec2.instance_id
}

output "ec2_public_ip" {
  type  = string
  value = component.ec2.public_ip
}

output "s3_bucket_id" {
  type  = string
  value = component.s3.bucket_id
}
