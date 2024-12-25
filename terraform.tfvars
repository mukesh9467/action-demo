# ## VPC values
# vpc_cidr_block = "10.0.0.0/16"
# vpc_name       = "dev-vpc"

# ## EC2 Instance values
# instance_count = 2
ami_id         = "ami-0fd05997b4dff7aac"
instance_type  = "t2.micro"
ssh_key        = "tf_key"

# ## Security group values
# sec_grp_name   = "dev-sg"
# sec_grp_desc   = "Security group for demo application"

# ingress_rules = [
#   {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   },
#   {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   },
#   {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# ]

# egress_rules = [
#   {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]   # Allow all outbound traffic
#   }
# ]

# bucket_name   = "mymsplanet03"
# bucket_access = "private"
# bucket_desc   = "Demo bucket"
# bucket_env    = "dev" 

# role_name    = "demo_ec2_role"
# role_desc    = "Demo Role for EC2 Instance"
# policy_name  = "demo_ec2_policy"
# policy_desc  = "Demo Policy for EC2 Instance"

# lb_name         = "demo-load-balancer"
# lb_type         = "application"
# tg_name         = "demo-target"
