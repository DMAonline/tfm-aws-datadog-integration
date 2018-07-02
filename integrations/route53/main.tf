module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "Route53"

  # "route53:List*",

  policy_actions = [
    "route53:listHealthChecks",
    "route53:listTagsForResources",
  ]
}
