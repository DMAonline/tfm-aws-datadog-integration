module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "Budgeting"

  policy_actions = [
    "budgets:ViewBudget",
  ]
}
