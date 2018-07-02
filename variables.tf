variable "datadog_external_id" {}

variable "datadog_aws_account_id" {
  default = "464622532012"
}

variable "integrations" {
  type    = "list"
  default = []
}
