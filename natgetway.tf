resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public-1a.id

  tags = {
    Name = "gw NAT"
  }
  depends_on = [aws_internet_gateway.gw]
}