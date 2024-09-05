<<<<<<< HEAD
variable "vpc-name" {}
variable "igw-name" {}
variable "rt-name" {}
variable "subnet-name" {}
variable "sg-name" {}
variable "instance-name" {}
variable "key-name" {}
variable "iam-role" {}
variable "environment" {}
=======
variable "ec2_name" {
  type    = string
  default = "Jenkins-server"
}

variable "aws_instance_ami" {
  type    = string
  default = "ami-0dcc1e21636832c5d"
}

variable "key_name" {
  type    = string
  default = "Key"
}

variable "subnet_name" {
  type    = string
  default = "subnet"
}

variable "vpc_name" {
  type    = string
  default = "vpc"
}

variable "igw_name" {
  type    = string
  default = "igw"
}

variable "sg_name" {
  type    = string
  default = "sg"
}

variable "rt_name" {
  type    = string
  default = "rt"
}

variable "iam_role" {
  type    = string
  default = "role"
}
>>>>>>> ffbe67799548c80eef6f6f4b058476f5b5fedf9a
