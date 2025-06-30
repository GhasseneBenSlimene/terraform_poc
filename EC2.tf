resource "aws_instance" "web" {
  ami           = "ami-0fab1b527ffa9b942"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "ghassene-instance"
  }
}
