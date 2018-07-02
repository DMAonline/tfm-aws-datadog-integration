module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "DynamoDB"

  policy_actions = [
    "dynamodb:ListStreams",
    "dynamodb:ListTables",
    "dynamodb:ListTagsOfResource",
    "dynamodb:DescribeLimits",
    "dynamodb:DescribeReservedCapacity",
    "dynamodb:DescribeReservedCapacityOfferings",
    "dynamodb:DescribeStream",
    "dynamodb:DescribeTable",
  ]
}
