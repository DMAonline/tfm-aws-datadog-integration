module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "CloudTrail"

  policy_actions = [
    "cloudtrail:DescribeTrails",
    "cloudtrail:GetTrailStatus",
  ]
}
