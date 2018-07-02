module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "CloudFront"

  policy_actions = [
    "cloudfront:GetDistributionConfig",
    "cloudfront:ListDistributions",
  ]
}
