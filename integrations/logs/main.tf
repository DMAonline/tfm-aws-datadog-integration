module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "Logs"

  # "logs:Get*",
  # "logs:Describe*",
  # "logs:FilterLogEvents",
  # "logs:TestMetricFilter",
  # "logs:PutSubscriptionFilter",
  # "logs:DeleteSubscriptionFilter",
  # "logs:DescribeSubscriptionFilters",

  policy_actions = [
    "logs:Get*",
    "logs:Describe*",
    "logs:FilterLogEvents",
    "logs:TestMetricFilter",
    "logs:PutSubscriptionFilter",
    "logs:DeleteSubscriptionFilter",
    "logs:DescribeSubscriptionFilters",
  ]
}
