resource "aws_instance" "Jenkins-server" {
  ami                     = "ami-0dcc1e21636832c5d"
  instance_type           = "t2.2xlarge"
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:012345678901:group/win-testhost"
  tenancy                 = "host"
}
