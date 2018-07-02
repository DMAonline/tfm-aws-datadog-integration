variable "dd_aws_role_name" {
  description = "Name of the AWS role for DataDog"
  default     = "DataDogAWSIntegrationRole"
}

variable "policy_actions" {
  default = []
  type    = "list"
}

variable "policy_resources" {
  default = ["*"]
  type    = "list"
}

variable "integration_name" {
  description = "Name of the AWS DataDog Integration"
}

variable "policy_path" {
  description = "Path in which to store the policy"
  default     = "/datadog"
}

data "aws_iam_policy_document" "dd_integration" {
  statement {
    sid = "DataDogAWSIntegration-${var.integration_name}"

    actions = "${var.policy_actions}"

    effect = "Allow"

    resources = "${var.policy_resources}"
  }
}

resource "aws_iam_policy" "dd_integration" {
  name        = "DatadogAWSIntegration-${var.integration_name}-Policy"
  path        = "${var.policy_path}"
  description = "DatadogAWSIntegration-${var.integration_name}-Policy"
  policy      = "${data.aws_iam_policy_document.dd_integration.json}"
}

resource "aws_iam_role_policy_attachment" "allow_dd_core_integration" {
  role       = "${var.dd_aws_role_name}"
  policy_arn = "${aws_iam_policy.dd_integration.arn}"
}
