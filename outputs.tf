output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = try(aws_s3_bucket.this.arn, "")
}

output "s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = try(aws_s3_bucket.this.bucket_domain_name, "")
}

output "s3_bucket_policy" {
  description = "The policy of the bucket, if the bucket is configured with a policy. If not, this will be an empty string."
  value       = try(aws_s3_bucket_policy.this[0].policy, "")
}

output "s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = try(aws_s3_bucket.this.region, "")
}

output "bucket_regional_domain_name" {
  description = "Regional domain for bucket ex: bucket-name.region.amazonaws.com"
  value       = try(aws_s3_bucket.this.bucket_regional_domain_name, "")
}

output "bucket_name" {
  description = "The name of the bucket."
  value       = try(aws_s3_bucket.this.bucket, "")
}
