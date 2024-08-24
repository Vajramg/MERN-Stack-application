resource "aws_iam_instance_profile" "instance_profile" {
  name = "jenkins_profile"
  role = aws_iam_role.iam_role.name
}
