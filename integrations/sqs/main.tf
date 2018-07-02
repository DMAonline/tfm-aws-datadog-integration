module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "SQS"

  # "sqs:ListQueues"

  policy_actions = [
    "sqs:ListQueues",
  ]
}
