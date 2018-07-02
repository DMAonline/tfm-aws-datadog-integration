module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  create_policy = "${var.enable_integration}"

  integration_name = "DirectConnect"

  policy_actions = [
    "directconnect:DescribeConnections",
    "directconnect:DescribeConnectionsOnInterconnect",
    "directconnect:DescribeInterconnects",
    "directconnect:DescribeLocations",
    "directconnect:DescribeVirtualGateways",
    "directconnect:DescribeVirtualInterfaces",
    "directconnect:DescribeTags",
  ]
}
