module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "ElastiCache"

  # "elasticache:Describe*",
  # "elasticache:List*",

  policy_actions = [
    "elasticache:DescribeCacheClusters",
    "elasticache:ListTagsForResource",
    "elasticache:DescribeEvents",
  ]
}
