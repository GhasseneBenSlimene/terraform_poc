resource "aws_instance" "web" {
  ami           = "ami-01f23391a59163da9"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "ghassene-instance"
  }
}
