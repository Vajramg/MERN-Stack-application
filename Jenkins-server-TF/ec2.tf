resource "aws_instance" "example-pc" {
  ami                    = var.aws_instance_ami
  instance_type          = "t2.micro"
  key_name               = var.key_name
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]
}
