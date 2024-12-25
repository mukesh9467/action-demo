# output "vpc_id" {
#   description = "The ID of the created VPC"
#   value       = module.vpc.vpc_id
# }
# output "subnet_ids" {
#   description = "The IDs of the created subnets"
#   value       = module.vpc.subnet_ids
# }
# output "sec_grp_id" {
#   description = "Security group ID"
#   value       = module.security_grp.sec_grp_id
# }
# output "instance_ids" {
#   description = "List of EC2 instance IDs from the module"
#   value       = module.ec2_instance.instance_ids
#   #value       = format("Instance IDs: %s", join(", ", module.ec2_instance.instance_ids))
# }

# output "bucket_arn" {
#   description = "Bucket ARN"
#   value       = module.s3_bucket.bucket_arn
# }

# output "role_name" {
#   description = "Bucket ARN"
#   value       = module.iam_role.role_name
# }
# output "policy_arn" {
#   description = "Bucket ARN"
#   value       = module.iam_role.policy_arn
# }
# output "role_arn" {
#   description = "Bucket ARN"
#   value       = module.iam_role.role_arn
# }

output "load_balancer_dns_name" {
  description = "DNS name of the load balancer"
  value       = module.load_balancer.lb_dns_name
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = module.load_balancer.tg_arn
}

output "listener_arn" {
  description = "ARN of the load balancer listener"
  value       = module.load_balancer.listener_arn
}
