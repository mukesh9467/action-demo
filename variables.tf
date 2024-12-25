# ##############################
# ##  VPC & Subnet Variables  ##
# ##############################
# variable "vpc_cidr_block" {
#   type        = string
#   description = "CIDR block for the VPC"
# }
# variable "vpc_name" {
#   type        = string
#   description = "Name of the VPC"
# }

# ##############################
# ## Security Group Variables ##
# ##############################
# variable "sec_grp_name" {
#   description = "Secuity group name"
#   type        = string
# }
# variable "sec_grp_desc" {
#   description = "Secuity group description"
#   type        = string
# }
# variable "ingress_rules" {
#   description = "List of ingress rules for the security group"
#   type        = list(object({
#     from_port   = number
#     to_port     = number
#     protocol    = string
#     cidr_blocks = list(string)
#   }))
#   default = []
# }
# variable "egress_rules" {
#   description = "List of egress rules for the security group"
#   type        = list(object({
#     from_port   = number
#     to_port     = number
#     protocol    = string
#     cidr_blocks = list(string)
#   }))
#   default = []
# }

##############################
##  EC2 Instance Variables  ##
##############################
# variable "instance_count" {
#   type        = number
#   description = "Number of EC2 instances to launch"
# }
variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instances"
}
variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
}
variable "ssh_key" {
  type = string
  description = "SSH key for login"
}

##############################
##   S3 Bucket Variables    ##
##############################
# variable "bucket_name" {
#   type = string
#   description = "Bucket name"
# }
# variable "bucket_access" {
#   type = string
#   description = "Access type of bucket"
#   default = "private"
# }
# variable "bucket_desc" {
#   type = string
#   description = "Bucket name"
# }
# variable "bucket_env" {
#   type = string
#   description = "Bucket environment"
# }

##############################
##    IAM Role Variables    ##
##############################
# variable "role_name" {
#   type = string
#   description = "Name of IAM role"
# }
# variable "role_desc" {
#   type = string
#   description = "Description of IAM role"
# }
# variable "policy_name" {
#   type = string
#   description = "Name of IAM policy"
# }
# variable "policy_desc" {
#   type = string
#   description = "Description of IAM policy"
# }

##############################
## Load Balancer Variables  ##
##############################
variable "lb_name" {
  type = string
  description = "Name of Load Balancer"
}
variable "lb_type" {
  type = string
  description = "Type of Load Balancer"
}
variable "tg_name" {
  type = string
  description = "Name of Load Balancer"
}
# variable "vpc_id" {
#   type = string
#   description = "VPC ID"
# }
# variable "subnet_ids" {
#   type = string
#   description = "Subnet IDs"
# }
