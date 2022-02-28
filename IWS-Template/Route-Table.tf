resource "aws_route_table" "Management-Public-RT" {
  vpc_id = aws_vpc.Management-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Management-IGW.id
  }

  tags = {
    Name = "Management-Public-RT"
  }
}

resource "aws_route_table" "Management-Private-RT" {
  vpc_id = aws_vpc.Management-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.Management-NAT.id
  }

  tags = {
    Name = "Management-Private-RT"
  }
}

resource "aws_route_table" "Dev-Public-RT" {
  vpc_id = aws_vpc.Dev-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Dev-IGW.id
  }

  tags = {
    Name = "Dev-Public-RT"
  }
}

resource "aws_route_table" "Dev-Private-RT" {
  vpc_id = aws_vpc.Dev-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.Dev-NAT.id
  }

  tags = {
    Name = "Dev-Private-RT"
  }
}




