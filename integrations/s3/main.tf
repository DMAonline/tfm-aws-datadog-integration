module "aws_dd_integration" {
  source = "../../modules/aws_dd_integration"

  integration_name = "S3"

  # "s3:GetBucketTagging",
  # "s3:ListAllMyBuckets",

  policy_actions = [
    "s3:ListAllMyBuckets",
    "s3:GetBucketTagging",
  ]
}
