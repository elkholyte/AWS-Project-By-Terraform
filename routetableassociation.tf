resource "aws_route_table_association" "public1" {
  subnet_id = aws_subnet.public-1a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  subnet_id = aws_subnet.private-1b.id
  route_table_id = aws_route_table.private.id
}