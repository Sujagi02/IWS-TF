resource "aws_vpc" "Management-VPC" {
  cidr_block = var.vpc_management_cidr

  tags = {
    Name = "Management-VPC"
  }

}

resource "aws_vpc" "Dev-VPC" {
  cidr_block = var.vpc_dev_cidr

  tags = {
    Name = "Dev-VPC"
  }
}
