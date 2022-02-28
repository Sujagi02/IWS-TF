resource "aws_subnet" "Management-Public-Subnet" {
  count                   = length(var.management_public_subnet_cidr)
  vpc_id                  = aws_vpc.Management-VPC.id
  cidr_block              = element(var.management_public_subnet_cidr, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = true

  tags = {
    "Name" = "Management-Public-Subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "Management-Private-Subnet" {
  count                   = length(var.management_private_subnet_cidr)
  vpc_id                  = aws_vpc.Management-VPC.id
  cidr_block              = element(var.management_private_subnet_cidr, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = true

  tags = {
    "Name" = "Management-Private-Subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "Dev-Public-Subnet" {
  count                   = length(var.dev_public_subnet_cidr)
  vpc_id                  = aws_vpc.Dev-VPC.id
  cidr_block              = element(var.dev_public_subnet_cidr, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = true

  tags = {
    "Name" = "Dev-Public-Subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "Dev-Private-Subnet" {
  count                   = length(var.dev_private_subnet_cidr)
  vpc_id                  = aws_vpc.Dev-VPC.id
  cidr_block              = element(var.dev_private_subnet_cidr, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = true

  tags = {
    "Name" = "Dev-Private-Subnet-${count.index + 1}"
  }
}