resource "aws_instance" "Management-instance" {
  depends_on = [
    aws_vpc.Management-VPC
  ]
  ami                    = var.ami
  key_name               = "IWS-TF"
  instance_type          = var.ec2_type
  vpc_security_group_ids = [aws_default_security_group.Management-SG.id]
  subnet_id              = element(aws_subnet.Management-Public-Subnet.*.id, 0)

  tags = {
    Name = "Management-instance"
  }
}

resource "aws_instance" "Dev-instance" {
  depends_on = [
    aws_vpc.Dev-VPC
  ]
  ami                    = var.ami
  key_name               = "IWS-TF"
  instance_type          = var.ec2_type
  vpc_security_group_ids = [aws_default_security_group.Dev-SG.id]
  subnet_id              = element(aws_subnet.Dev-Private-Subnet.*.id, 1)

  tags = {
    Name = "Dev-instance"
  }
}