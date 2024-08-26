resource "aws_instance" "terraform" {
  ami           = "ami-07cc1bbe145f35b58"
  instance_type = "t2.micro"
  depends_on = [ aws_vpc.myvpc ]
  subnet_id = aws_subnet.public-1a.id
  key_name = "1"
  tags = {
    Name = "terraform"
  }
}

resource "aws_instance" "serv2" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  depends_on = [ aws_vpc.myvpc ]
  subnet_id = aws_subnet.private-1b.id
  key_name = "3"
  tags = {
    Name = "tlinux"
  }
}