#EIP for NATs
resource "aws_eip" "Management-NAT-Eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.Management-IGW]

  tags = {
    "Name" = "Management-NAT-Eip"
  }
}

resource "aws_eip" "Dev-NAT-Eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.Dev-IGW]

  tags = {
    "Name" = "Dev-NAT-Eip"
  }
}

resource "aws_nat_gateway" "Management-NAT" {
  allocation_id = aws_eip.Management-NAT-Eip.id
  subnet_id     = element(aws_subnet.Management-Public-Subnet.*.id, 0)

  tags = {
    Name = "Management-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.Management-IGW]
}

resource "aws_nat_gateway" "Dev-NAT" {
  allocation_id = aws_eip.Dev-NAT-Eip.id
  subnet_id     = element(aws_subnet.Dev-Public-Subnet.*.id, 1)

  tags = {
    Name = "Dev-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.Dev-IGW]
}