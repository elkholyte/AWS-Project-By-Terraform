resource "aws_subnet" "private-1b" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr
  availability_zone = "us-east-1b"
  tags = {
    Name = "private"
  }
}

resource "aws_subnet" "public-1a" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public"
  }
}