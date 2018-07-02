module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "EC2SpotFleet"

  # Unknown - Based of EC2 integraiton

  policy_actions = [
    "ec2:DescribeSpot*",
  ]
}
