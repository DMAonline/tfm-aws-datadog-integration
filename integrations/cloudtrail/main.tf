module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "CloudTrail"

  policy_actions = [
    "cloudtrail:DescribeTrails",
    "cloudtrail:GetTrailStatus",
  ]
}
