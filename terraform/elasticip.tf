resource "aws_eip" "lb" {
  domain   = "vpc"
  depends_on = [ aws_internet_gateway.gw ]
}