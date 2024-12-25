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
variable "vpc_id" {
  type = string
  description = "VPC ID"
}
variable "subnet_ids" {
  type = string
  description = "Subnet IDs"
}
variable "sec_grp_id" {
  type = string
  description = "Security Group IDs"
}