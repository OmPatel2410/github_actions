resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = "public_route_table"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.om_nat.id
  }


  tags = {
    Name = "private_route_table"
  }
}

resource "aws_route_table_association" "public_assos_1" {
  subnet_id      = aws_subnet.om_public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_assos_2" {
  subnet_id      = aws_subnet.om_public_subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_assos_1" {
  subnet_id      = aws_subnet.om_private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_assos_2" {
  subnet_id      = aws_subnet.om_private_subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}