module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "RDS"

  # "rds:Describe*",
  # "rds:List*",

  policy_actions = [
    "rds:DescribeDBInstances",
    "rds:ListTagsForResource",
    "rds:DescribeEvents",
  ]
}
