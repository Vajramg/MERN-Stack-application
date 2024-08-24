resource "aws_instance" "jenkin-vm" {
  ami                    = "ami-0a0e5d9c7acc336f1"
  instance_type          = "t2.2xlarge"
  key_name               = var.key-name
  iam_instance_profile   = aws_iam_instance_profile.instance_profile.name
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  root_block_device {
    volume_size = 30
  }
  user_data = templatefile("./tools.sh", {})

  tags = {
    name        = var.instance-name
    environment = var.environment
  }
}
