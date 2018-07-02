module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "NLB"

  # elasticloadbalancing:Describe*",

  policy_actions = [
    "elasticloadbalancing:DescribeLoadBalancers",
    "elasticloadbalancing:DescribeTags",
    "elasticloadbalancing:DescribeInstanceHealth",
  ]
}
