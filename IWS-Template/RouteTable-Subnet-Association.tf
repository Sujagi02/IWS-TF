#Associate Management RT to Subnets
/*resource "aws_route_table_association" "Management-Public" {
  subnet_id     = "${element(aws_subnet.Management-Public-Subnet.*.id, 0)}"
  route_table_id = aws_route_table.Management-Public-RT.id
}

resource "aws_route_table_association" "Management-Public-1" {
  subnet_id     = "${element(aws_subnet.Management-Public-Subnet.*.id, 1)}"
  route_table_id = aws_route_table.Management-Public-RT.id
}

resource "aws_route_table_association" "Management-Private" {
  subnet_id     = "${element(aws_subnet.Management-Private-Subnet.*.id, 0)}"
  route_table_id = aws_route_table.Management-Private-RT.id
}

resource "aws_route_table_association" "Management-Private-1" {
  subnet_id     = "${element(aws_subnet.Management-Private-Subnet.*.id, 1)}"
  route_table_id = aws_route_table.Management-Private-RT.id
}*/

resource "aws_route_table_association" "Management-Public" {
  count          = length(var.management_public_subnet_cidr)
  subnet_id      = element(aws_subnet.Management-Public-Subnet.*.id, count.index)
  route_table_id = aws_route_table.Management-Public-RT.id
}

resource "aws_route_table_association" "Management-Private" {
  count          = length(var.management_private_subnet_cidr)
  subnet_id      = element(aws_subnet.Management-Private-Subnet.*.id, count.index)
  route_table_id = aws_route_table.Management-Private-RT.id
}

#Associate Dev RT to Subnets
/*resource "aws_route_table_association" "Dev-Public" {
  subnet_id     = "${element(aws_subnet.Dev-Public-Subnet.*.id, 0)}"
  route_table_id = aws_route_table.Dev-Public-RT.id
}

resource "aws_route_table_association" "Dev-Public-1" {
  subnet_id     = "${element(aws_subnet.Dev-Public-Subnet.*.id, 1)}"
  route_table_id = aws_route_table.Dev-Public-RT.id
}

resource "aws_route_table_association" "Dev-Private" {
  subnet_id     = "${element(aws_subnet.Dev-Private-Subnet.*.id, 0)}"
  route_table_id = aws_route_table.Dev-Private-RT.id
}

resource "aws_route_table_association" "Dev-Private-1" {
  subnet_id     = "${element(aws_subnet.Dev-Private-Subnet.*.id, 1)}"
  route_table_id = aws_route_table.Dev-Private-RT.id
}*/

resource "aws_route_table_association" "Dev-Public" {
  count          = length(var.dev_public_subnet_cidr)
  subnet_id      = element(aws_subnet.Dev-Public-Subnet.*.id, count.index)
  route_table_id = aws_route_table.Dev-Public-RT.id
}

resource "aws_route_table_association" "Dev-Private" {
  count          = length(var.dev_private_subnet_cidr)
  subnet_id      = element(aws_subnet.Dev-Private-Subnet.*.id, count.index)
  route_table_id = aws_route_table.Dev-Private-RT.id
}