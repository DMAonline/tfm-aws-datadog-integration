output "datadog_role" {
  value = "${aws_iam_role.dd_account_integration_role.name}"
}

output "datadog_role_arn" {
  value = "${aws_iam_role.dd_account_integration_role.arn}"
}
