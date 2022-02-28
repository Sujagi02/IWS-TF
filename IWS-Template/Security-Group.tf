resource "aws_default_security_group" "Management-SG" {
  vpc_id = aws_vpc.Management-VPC.id

  ingress {
    protocol  = "-1"
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Management-SG"
  }
}

resource "aws_default_security_group" "Dev-SG" {
  vpc_id = aws_vpc.Dev-VPC.id

  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 22
    to_port   = 22
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Dev-SG"
  }
}