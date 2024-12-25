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
