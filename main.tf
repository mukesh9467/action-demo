module "global" {
  source         = "./modules/global"
}
# module "vpc" {
#   source         = "./modules/vpc"
#   vpc_cidr_block = var.vpc_cidr_block
#   vpc_name       = var.vpc_name
# }
# module "security_grp" {
#   source         = "./modules/security_grp"
#   sec_grp_name   = var.sec_grp_name
#   sec_grp_desc   = var.sec_grp_desc
#   vpc_id         = module.vpc.vpc_id

#   ingress_rules = [
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     },
#     {
#       from_port   = 22
#       to_port     = 22
#       protocol    = "tcp"
#       cidr_blocks = ["192.168.1.0/24"]
#     }
#   ]

#   egress_rules = [
#     {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   ]
# }

module "ec2_instance" {
  source           = "./modules/ec2_instance"
  #instance_count   = var.instance_count
  #subnet_ids       = module.vpc.subnet_ids
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  ssh_key          = var.ssh_key
  sec_grp_id       = "sg-0826493edff1d99c8"
}

# module "s3_bucket" {
#   source           = "./modules/s3_bucket"
#   bucket_name      = var.bucket_name
#   bucket_access    = var.bucket_access
#   bucket_desc      = var.bucket_desc
#   bucket_env       = var.bucket_env
# }

# module "iam_role" {
#   source           = "./modules/iam_role"
#   role_name        = var.role_name 
#   role_desc        = var.role_desc
#   policy_name      = var.policy_name
#   policy_desc      = var.policy_desc
#   }

# module "load_balancer" {
#   source           = "./modules/load_balancer"
#   lb_name          = var.lb_name
#   lb_type          = var.lb_type
#   tg_name          = var.tg_name
#   sec_grp_id       = "sg-0826493edff1d99c8"
#   subnet_ids       = "subnet-07644b9a6c62cadee"
#   vpc_id           = "vpc-0a038accd4e65e364"
#   }
