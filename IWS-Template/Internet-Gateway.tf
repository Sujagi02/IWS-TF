resource "aws_internet_gateway" "Management-IGW" {
  vpc_id = aws_vpc.Management-VPC.id

  tags = {
    Name = "Management-IGW"
  }
}

resource "aws_internet_gateway" "Dev-IGW" {
  vpc_id = aws_vpc.Dev-VPC.id

  tags = {
    Name = "Dev-IGW"
  }
}

