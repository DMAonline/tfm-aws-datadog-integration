module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "Redshift"

  # "redshift:DescribeClusters",
  # "redshift:DescribeLoggingStatus",

  policy_actions = [
    "redshift:DescribeClusters",
    "redshift:DescribeLoggingStatus",
    "tag:GetResources",
  ]
}
