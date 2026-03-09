output "ec2_instance_id" {
  value = component.ec2.instance_id
}

output "ec2_public_ip" {
  value = component.ec2.public_ip
}

output "s3_bucket_id" {
  value = component.s3.bucket_id
}
