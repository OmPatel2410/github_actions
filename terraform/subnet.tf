resource "aws_subnet" "om_public_subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ca-central-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "om_public_subnet1"
  }
}

resource "aws_subnet" "om_public_subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ca-central-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "om_public_subnet2"
  }
}

resource "aws_subnet" "om_private_subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ca-central-1a"
  tags = {
    Name = "om_private_subnet1"
  }
}

resource "aws_subnet" "om_private_subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "ca-central-1b"
  tags = {
    Name = "om_private_subnet2"
  }
}

