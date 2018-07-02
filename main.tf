data "aws_iam_policy_document" "dd_trust_policy" {
  statement {
    sid = "DataDogAWSIntegrationTrustPolicy"

    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type = "AWS"

      identifiers = [
        "arn:aws:iam::${var.datadog_aws_account_id}:root",
      ]
    }

    effect = "Allow"

    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"

      values = [
        "${var.datadog_sts_external_id}",
      ]
    }
  }
}

resource "aws_iam_role" "dd_account_integration_role" {
  name               = "DataDogAWSIntegrationRole"
  assume_role_policy = "${data.aws_iam_policy_document.dd_trust_policy.json}"
}

data "aws_iam_policy_document" "dd_integration_core" {
  statement {
    sid = "DataDogAWSIntegrationCore"

    actions = [
      "cloudwatch:GetMetricStatistics",
      "cloudwatch:ListMetrics",
      "ec2:Describe*",
      "support:*",
      "tag:GetResources",
      "tag:GetTagKeys",
      "tag:GetTagValues",
    ]

    effect = "Allow"

    resources = [
      "*",
    ]
  }
}

resource "aws_iam_policy" "dd_account_integration_core" {
  name        = "DatadogAWSIntegrationCorePolicy"
  path        = "/datadog/"
  description = "DatadogAWSIntegrationCorePolicy"
  policy      = "${data.aws_iam_policy_document.dd_integration_core.json}"
}

resource "aws_iam_role_policy_attachment" "allow_dd_core_integration" {
  role       = "${aws_iam_role.dd_account_integration_role.name}"
  policy_arn = "${aws_iam_policy.dd_account_integration_core.arn}"
}
