module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "Kinesis"

  # "kinesis:List*",
  # "kinesis:Describe*",

  policy_actions = [
    "kinesis:ListStreams",
    "kinesis:DescribeStream",
    "kinesis:ListTagsForStream",
  ]
}
