module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "CodeDeploy"

  policy_actions = [
    "codedeploy:ListApplicationRevisions",
    "codedeploy:ListApplications",
    "codedeploy:ListDeploymentConfigs",
    "codedeploy:ListDeploymentGroups",
    "codedeploy:ListDeploymentInstances",
    "codedeploy:ListDeployments",
    "codedeploy:ListGitHubAccountTokenNames",
    "codedeploy:ListOnPremisesInstances",
    "codedeploy:BatchGetApplicationRevisions",
    "codedeploy:BatchGetApplications",
    "codedeploy:BatchGetDeploymentGroups",
    "codedeploy:BatchGetDeploymentInstances",
    "codedeploy:BatchGetDeployments",
    "codedeploy:BatchGetOnPremisesInstances",
  ]
}
