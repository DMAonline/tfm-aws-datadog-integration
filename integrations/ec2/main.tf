module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "EC2"

  # ec2:Describe* - Specifics Unknown

  policy_actions = [
    "ec2:Describe*",
  ]
}
