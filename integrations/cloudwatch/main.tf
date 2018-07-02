module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "CloudWatch"

  policy_actions = [
    "cloudwatch:DescribeAlarmHistory",
    "cloudwatch:DescribeAlarms",
    "cloudwatch:DescribeAlarmForMetric",
    "cloudwatch:GetDashboard",
    "cloudwatch:GetMetricData",
    "cloudwatch:GetMetricStatistics",
    "cloudwatch:ListDashboards",
    "cloudwatch:ListMetrics",
  ]
}
