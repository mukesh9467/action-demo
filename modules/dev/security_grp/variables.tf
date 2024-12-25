variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}
variable "sec_grp_name" {
  description = "Name of the security group"
  type        = string
}
variable "sec_grp_desc" {
  description = "Description of the security group"
  type        = string
}
variable "ingress_rules" {
  description = "List of ingress rules for the security group"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
variable "egress_rules" {
  description = "List of egress rules for the security group"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}