module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "Budgeting"

  policy_actions = [
    "budgets:ViewBudget",
  ]
}
