variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_management_cidr" {
  default = "30.0.0.0/16"
}

variable "vpc_dev_cidr" {
  default = "20.100.0.0/16"
}

variable "management_public_subnet_cidr" {
  default = ["30.0.1.0/24", "30.0.2.0/24"]
  type    = list(any)
}

variable "management_private_subnet_cidr" {
  default = ["30.0.3.0/24", "30.0.4.0/24"]
  type    = list(any)
}

variable "dev_public_subnet_cidr" {
  default = ["20.100.1.0/24", "20.100.2.0/24"]
  type    = list(any)
}

variable "dev_private_subnet_cidr" {
  default = ["20.100.3.0/24", "20.100.4.0/24"]
  type    = list(any)
}

variable "azs" {
  type    = list(any)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

variable "ami" {
  default = "ami-0c6615d1e95c98aca"
}

variable "ec2_type" {
  default = "t2.micro"
}
