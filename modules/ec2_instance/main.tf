resource "aws_instance" "this" {
  #count           = var.instance_count
  ami             = var.ami_id
  instance_type   = var.instance_type
  #subnet_id       = var.subnet_id #element(var.subnet_ids, count.index)
  # security_groups = [var.sec_grp_id]
  key_name        = var.ssh_key
 
  tags = {
    Name = "dev-instance"
  }
}

# resource "aws_s3_bucket" "my_bucket" {
#   bucket = "my-unique-bucket-name"  
#   acl    = "private"                

#   versioning {
#     enabled = true                  
#   }

#   lifecycle {
#     prevent_destroy = true          
#   }

#   tags = {
#     Name        = "MyS3Bucket"
#     Environment = "Dev"
#   }
# }