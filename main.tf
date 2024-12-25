resource "aws_instance" "this" {
  count           = var.instance_count
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = element(var.subnet_ids, count.index)
  security_groups = [var.sec_grp_id]
  key_name        = var.ssh_key
 
  tags = {
    Name = "dev-instance-${count.index}"
  }
}
