module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "ES"

  # "es:ListTags",
  # "es:ListDomainNames",
  # "es:DescribeElasticsearchDomains",

  policy_actions = [
    "es:ListTags",
    "es:ListDomainNames",
    "es:DescribeElasticsearchDomains",
  ]
}
