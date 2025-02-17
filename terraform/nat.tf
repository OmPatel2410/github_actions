resource "aws_nat_gateway" "om_nat" {
  allocation_id = aws_eip.lb.id
    subnet_id     = aws_subnet.om_public_subnet1.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}