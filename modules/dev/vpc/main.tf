data "aws_availability_zones" "az_details" {
  state = "available"
}

resource "aws_vpc" "this" {
  cidr_block              = var.vpc_cidr_block
  enable_dns_support      = true
  enable_dns_hostnames    = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "this" {
  count                   = length(data.aws_availability_zones.az_details.names)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 4, count.index)
  availability_zone       = element(data.aws_availability_zones.az_details.names, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-subnet-${count.index}"
  }
}