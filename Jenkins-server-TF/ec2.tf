<<<<<<< HEAD
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
=======
resource "aws_instance" "var.ec2_name" {
  ami                     = var.aws_instance_ami
  instance_type           = "t2.2xlarge"
  key_name                = var.key_name
  subnet_id               = aws_subnet.public-subnet.id
  vpc_security_group_ids  = aws_security_group.jenkins-sg.id
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:012345678901:group/win-testhost"
  tenancy                 = "host"
>>>>>>> ffbe67799548c80eef6f6f4b058476f5b5fedf9a
}
