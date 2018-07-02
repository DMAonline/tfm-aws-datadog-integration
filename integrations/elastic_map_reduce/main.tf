module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "EMR"

  # "elasticmapreduce:List*",
  # "elasticmapreduce:Describe*",

  policy_actions = [
    "elasticmapreduce:ListCLusters",
    "elasticmapreduce:DescribeCluster",
  ]
}
