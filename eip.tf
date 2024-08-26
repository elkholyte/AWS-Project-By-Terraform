resource "aws_eip" "lb" {
  domain   = "vpc"
  depends_on = [ aws_internet_gateway.gw ]
}

# resource "aws_eip" "b" {
#   domain   = "vpc"
#   instance = aws_instance.terraform.id
# }

# resource "aws_eip" "q" {
#   domain   = "vpc"
#   instance = aws_instance.serv2.id
# }