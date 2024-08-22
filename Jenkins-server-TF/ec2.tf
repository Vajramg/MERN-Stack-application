resource "aws_instance" "var.ec2_name" {
  ami                     = var.aws_instance_ami
  instance_type           = "t2.2xlarge"
  key_name                = var.key_name
  subnet_id               = aws_subnet.public-subnet.id
  vpc_security_group_ids  = aws_security_group.jenkins-sg.id
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:012345678901:group/win-testhost"
  tenancy                 = "host"
}
