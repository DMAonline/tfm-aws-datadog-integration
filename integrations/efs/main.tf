module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "EFS"

  policy_actions = [
    "elasticfilesystem:DescribeFileSystems",
    "elasticfilesystem:DescribeTags",
  ]
}
