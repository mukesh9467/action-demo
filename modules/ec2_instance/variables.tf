# variable "instance_count" {
#   type        = number
#   description = "Number of EC2 instances"
# }
variable "subnet_ids" {
  type        = list(string)
  description = "List of Subnet IDs for EC2 instances"
}
variable "subnet_id" {
  type        = string
  description = "List of Subnet IDs for EC2 instances"
}
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
variable "sec_grp_id" {
  type = string
  description = "Security group to be used"
}