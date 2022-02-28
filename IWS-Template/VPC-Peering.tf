resource "aws_vpc_peering_connection" "Management-Dev-Peering" {
  peer_vpc_id = aws_vpc.Dev-VPC.id
  vpc_id      = aws_vpc.Management-VPC.id
  peer_region = "ap-south-1"
  auto_accept = true

  tags = {
    Name = "Management-Dev"
  }
}