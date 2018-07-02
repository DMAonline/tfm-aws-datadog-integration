module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "ECS"

  # ecs:List*
  # ecs:Describe*

  policy_actions = [
    "ecs:ListClusters",
    "ecs:ListContainerInstances",
    "ecs:DescribeClusters",
    "ecs:DescribeContainerInstances",
  ]
}
