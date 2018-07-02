module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "SES"

  # "ses:Get*"

  policy_actions = [
    "ses:GetSendQuota",
    "ses:GetSendStatistics",
  ]
}
