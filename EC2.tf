resource "aws_instance" "web" {
  ami           = "ami-07d0cf3af28718ef8" # Amazon Linux 2 (region eu-west-1)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "ghassene-instance"
  }
}
