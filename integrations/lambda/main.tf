module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "Lambda"

  # "lambda:List*",
  # logs:DescribeLogGroups
  # logs:DescribeLogStreams
  # logs:FilterLogEvents
  # tag:GetResources

  policy_actions = [
    "lambda:ListAliases",
    "lambda:ListEventSourceMappings",
    "lambda:ListFunctions",
    "lambda:ListVersionsByFunction",
    "logs:DescribeLogGroups",
    "logs:DescribeLogStreams",
    "logs:FilterLogEvents",
    "tag:GetResources",
  ]
}
