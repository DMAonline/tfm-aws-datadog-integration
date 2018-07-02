module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "SNS"

  # "sns:List*"
  # "sns:Publish"

  policy_actions = [
    "sns:ListTopics",
    "sns:Publish",
  ]
}
