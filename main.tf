resource "aws_instance" "this" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = "subnet-07644b9a6c62cadee"
  security_groups = ["sg-0826493edff1d99c8"]
  key_name        = var.ssh_key
 
  tags = {
    Name = "dev-instance"
  }
}
