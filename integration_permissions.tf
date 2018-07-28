locals {
  booleans                           = "${map("true", true, "false", false)}"
  api_gateway_enabled                = "${lookup(local.booleans, contains(var.integrations, "api_gateway"), false)}"
  alb_enabled                        = "${lookup(local.booleans, contains(var.integrations, "alb"), false)}"
  autoscaling_enabled                = "${lookup(local.booleans, contains(var.integrations, "autoscaling"), false)}"
  billing_enabled                    = "${lookup(local.booleans, contains(var.integrations, "billing"), false)}"
  budgeting_enabled                  = "${lookup(local.booleans, contains(var.integrations, "budgeting"), false)}"
  cloudfront_enabled                 = "${lookup(local.booleans, contains(var.integrations, "cloudfront"), false)}"
  cloudsearch_enabled                = "${lookup(local.booleans, contains(var.integrations, "cloudsearch"), false)}"
  cloudtrail_enabled                 = "${lookup(local.booleans, contains(var.integrations, "cloudtrail"), false)}"
  cloudwatch_enabled                 = "${lookup(local.booleans, contains(var.integrations, "cloudwatch"), false)}"
  code_deploy_enabled                = "${lookup(local.booleans, contains(var.integrations, "code_deploy"), false)}"
  database_migration_service_enabled = "${lookup(local.booleans, contains(var.integrations, "database_migration_service"), false)}"
  ddos_protection_enabled            = "${lookup(local.booleans, contains(var.integrations, "ddos_protection"), false)}"
  direct_connect_enabled             = "${lookup(local.booleans, contains(var.integrations, "direct_connect"), false)}"
  dynamodb_enabled                   = "${lookup(local.booleans, contains(var.integrations, "dynamodb"), false)}"
  ebs_enabled                        = "${lookup(local.booleans, contains(var.integrations, "ebs"), false)}"
  ec2_enabled                        = "${lookup(local.booleans, contains(var.integrations, "ec2"), false)}"
  ec2_api_enabled                    = "${lookup(local.booleans, contains(var.integrations, "ec2_api"), false)}"
  ec2_spot_fleet_enabled             = "${lookup(local.booleans, contains(var.integrations, "ec2_spot_fleet"), false)}"
  ecs_enabled                        = "${lookup(local.booleans, contains(var.integrations, "ecs"), false)}"
  efs_enabled                        = "${lookup(local.booleans, contains(var.integrations, "efs"), false)}"
  elastic_beanstalk_enabled          = "${lookup(local.booleans, contains(var.integrations, "elastic_beanstalk"), false)}"
  elastic_map_reduce_enabled         = "${lookup(local.booleans, contains(var.integrations, "emr"), false)}"
  elastic_transcoder_enabled         = "${lookup(local.booleans, contains(var.integrations, "elastic_transcoder"), false)}"
  elasticache_enabled                = "${lookup(local.booleans, contains(var.integrations, "elasticache"), false)}"
  elb_enabled                        = "${lookup(local.booleans, contains(var.integrations, "elb"), false)}"
  es_enabled                         = "${lookup(local.booleans, contains(var.integrations, "es"), false)}"
  firehose_enabled                   = "${lookup(local.booleans, contains(var.integrations, "firehose"), false)}"
  iot_enabled                        = "${lookup(local.booleans, contains(var.integrations, "iot"), false)}"
  kinesis_enabled                    = "${lookup(local.booleans, contains(var.integrations, "kinesis"), false)}"
  kinesis_analytics_enabled          = "${lookup(local.booleans, contains(var.integrations, "kinesis_analytics"), false)}"
  kms_enabled                        = "${lookup(local.booleans, contains(var.integrations, "kms"), false)}"
  lambda_enabled                     = "${lookup(local.booleans, contains(var.integrations, "lambda"), false)}"
  lex_enabled                        = "${lookup(local.booleans, contains(var.integrations, "lex"), false)}"
  logs_enabled                       = "${lookup(local.booleans, contains(var.integrations, "logs"), false)}"
  machine_learning_enabled           = "${lookup(local.booleans, contains(var.integrations, "ml"), false)}"
  mq_enabled                         = "${lookup(local.booleans, contains(var.integrations, "mq"), false)}"
  nat_gateway_enabled                = "${lookup(local.booleans, contains(var.integrations, "nat_gateway"), false)}"
  network_elb_enabled                = "${lookup(local.booleans, contains(var.integrations, "nlb"), false)}"
  ops_works_enabled                  = "${lookup(local.booleans, contains(var.integrations, "ops_works"), false)}"
  polly_enabled                      = "${lookup(local.booleans, contains(var.integrations, "polly"), false)}"
  rds_enabled                        = "${lookup(local.booleans, contains(var.integrations, "rds"), false)}"
  redshift_enabled                   = "${lookup(local.booleans, contains(var.integrations, "redshift"), false)}"
  rekognition_enabled                = "${lookup(local.booleans, contains(var.integrations, "rekognition"), false)}"
  route53_enabled                    = "${lookup(local.booleans, contains(var.integrations, "route53"), false)}"
  s3_enabled                         = "${lookup(local.booleans, contains(var.integrations, "s3"), false)}"
  sagemaker_enabled                  = "${lookup(local.booleans, contains(var.integrations, "sagemaker"), false)}"
  ses_enabled                        = "${lookup(local.booleans, contains(var.integrations, "ses"), false)}"
  simple_workflow_service_enabled    = "${lookup(local.booleans, contains(var.integrations, "swf"), false)}"
  sns_enabled                        = "${lookup(local.booleans, contains(var.integrations, "sns"), false)}"
  sqs_enabled                        = "${lookup(local.booleans, contains(var.integrations, "sqs"), false)}"
  state_machine_enabled              = "${lookup(local.booleans, contains(var.integrations, "state_machine"), false)}"
  storage_gateway_enabled            = "${lookup(local.booleans, contains(var.integrations, "storage_gateway"), false)}"
  vpn_enabled                        = "${lookup(local.booleans, contains(var.integrations, "vpn"), false)}"
  waf_enabled                        = "${lookup(local.booleans, contains(var.integrations, "waf"), false)}"
  workspaces_enabled                 = "${lookup(local.booleans, contains(var.integrations, "workspaces"), false)}"
}

module "dd_integration_api_gateway" {
  enable_integration = "${local.api_gateway_enabled}"
  source             = "./integrations/api_gateway"
}

module "dd_integration_alb" {
  enable_integration = "${local.alb_enabled}"
  source             = "./integrations/application_elb"
}

module "dd_integration_autoscaling" {
  enable_integration = "${local.autoscaling_enabled}"
  source             = "./integrations/autoscaling"
}

module "dd_integration_billing" {
  enable_integration = "${local.billing_enabled}"
  source             = "./integrations/billing"
}

module "dd_integration_budgeting" {
  enable_integration = "${local.budgeting_enabled}"
  source             = "./integrations/budgeting"
}

module "dd_integration_cloudfrontcloudfront" {
  enable_integration = "${local.cloudfront_enabled}"
  source             = "./integrations/cloudfront"
}

module "dd_integration_cloudsearch" {
  enable_integration = "${local.cloudsearch_enabled}"
  source             = "./integrations/cloudsearch"
}

module "dd_integration_cloudtrail" {
  enable_integration = "${local.cloudtrail_enabled}"
  source             = "./integrations/cloudtrail"
}

module "dd_integration_cloudwatch" {
  enable_integration = "${local.cloudwatch_enabled}"
  source             = "./integrations/cloudwatch"
}

module "dd_integration_code_deploy" {
  enable_integration = "${local.code_deploy_enabled}"
  source             = "./integrations/code_deploy"
}

module "dd_integration_database_migration_service" {
  enable_integration = "${local.database_migration_service_enabled}"
  source             = "./integrations/database_migration_service"
}

module "dd_integration_ddos_protection" {
  enable_integration = "${local.ddos_protection_enabled}"
  source             = "./integrations/ddos_protection"
}

module "dd_integration_direct_connect" {
  enable_integration = "${local.direct_connect_enabled}"
  source             = "./integrations/direct_connect"
}

module "dd_integration_dynamodb" {
  enable_integration = "${local.dynamodb_enabled}"
  source             = "./integrations/dynamodb"
}

module "dd_integration_ebs" {
  enable_integration = "${local.ebs_enabled}"
  source             = "./integrations/ebs"
}

module "dd_integration_ec2" {
  enable_integration = "${local.ec2_enabled}"
  source             = "./integrations/ec2"
}

module "dd_integration_ec2_api" {
  enable_integration = "${local.ec2_api_enabled}"
  source             = "./integrations/ec2_api"
}

module "dd_integration_ec2_spot_fleet" {
  enable_integration = "${local.ec2_spot_fleet_enabled}"
  source             = "./integrations/ec2_spot_fleet"
}

module "dd_integration_ecs" {
  enable_integration = "${local.ecs_enabled}"
  source             = "./integrations/ecs"
}

module "dd_integration_efs" {
  enable_integration = "${local.efs_enabled}"
  source             = "./integrations/efs"
}

module "dd_integration_elastic_beanstalk" {
  enable_integration = "${local.elastic_beanstalk_enabled}"
  source             = "./integrations/elastic_beanstalk"
}

module "dd_integration_elastic_map_reduce" {
  enable_integration = "${local.elastic_map_reduce_enabled}"
  source             = "./integrations/elastic_map_reduce"
}

module "dd_integration_elastic_transcoder" {
  enable_integration = "${local.elastic_transcoder_enabled}"
  source             = "./integrations/elastic_transcoder"
}

module "dd_integration_elasticache" {
  enable_integration = "${local.elasticache_enabled}"
  source             = "./integrations/elasticache"
}

module "dd_integration_elb" {
  enable_integration = "${local.elb_enabled}"
  source             = "./integrations/elb"
}

module "dd_integration_es" {
  enable_integration = "${local.es_enabled}"
  source             = "./integrations/es"
}

module "dd_integration_firehose" {
  enable_integration = "${local.firehose_enabled}"
  source             = "./integrations/firehose"
}

module "dd_integration_iot" {
  enable_integration = "${local.iot_enabled}"
  source             = "./integrations/iot"
}

module "dd_integration_kinesis" {
  enable_integration = "${local.kinesis_enabled}"
  source             = "./integrations/kinesis"
}

module "dd_integration_kinesis_analytics" {
  enable_integration = "${local.kinesis_analytics_enabled}"
  source             = "./integrations/kinesis_analytics"
}

module "dd_integration_kms" {
  enable_integration = "${local.kms_enabled}"
  source             = "./integrations/kms"
}

module "dd_integration_lambda" {
  enable_integration = "${local.lambda_enabled}"
  source             = "./integrations/lambda"
}

module "dd_integration_lex" {
  enable_integration = "${local.lex_enabled}"
  source             = "./integrations/lex"
}

module "dd_integration_logs" {
  enable_integration = "${local.logs_enabled}"
  source             = "./integrations/logs"
}

module "dd_integration_machine_learning" {
  enable_integration = "${local.machine_learning_enabled}"
  source             = "./integrations/machine_learning"
}

module "dd_integration_mq" {
  enable_integration = "${local.mq_enabled}"
  source             = "./integrations/mq"
}

module "dd_integration_nat_gateway" {
  enable_integration = "${local.nat_gateway_enabled}"
  source             = "./integrations/nat_gateway"
}

module "dd_integration_network_elb" {
  enable_integration = "${local.network_elb_enabled}"
  source             = "./integrations/network_elb"
}

module "dd_integration_ops_works" {
  enable_integration = "${local.ops_works_enabled}"
  source             = "./integrations/ops_works"
}

module "dd_integration_polly" {
  enable_integration = "${local.polly_enabled}"
  source             = "./integrations/polly"
}

module "dd_integration_rds" {
  enable_integration = "${local.rds_enabled}"
  source             = "./integrations/rds"
}

module "dd_integration_redshift" {
  enable_integration = "${local.redshift_enabled}"
  source             = "./integrations/redshift"
}

module "dd_integration_rekognition" {
  enable_integration = "${local.rekognition_enabled}"
  source             = "./integrations/rekognition"
}

module "dd_integration_route53" {
  enable_integration = "${local.route53_enabled}"
  source             = "./integrations/route53"
}

module "dd_integration_s3" {
  enable_integration = "${local.s3_enabled}"
  source             = "./integrations/s3"
}

module "dd_integration_sagemaker" {
  enable_integration = "${local.sagemaker_enabled}"
  source             = "./integrations/sagemaker"
}

module "dd_integration_ses" {
  enable_integration = "${local.ses_enabled}"
  source             = "./integrations/ses"
}

module "dd_integration_simple_workflow_service" {
  enable_integration = "${local.simple_workflow_service_enabled}"
  source             = "./integrations/simple_workflow_service"
}

module "dd_integration_sns" {
  enable_integration = "${local.sns_enabled}"
  source             = "./integrations/sns"
}

module "dd_integration_sqs" {
  enable_integration = "${local.sqs_enabled}"
  source             = "./integrations/sqs"
}

module "dd_integration_state_machine" {
  enable_integration = "${local.state_machine_enabled}"
  source             = "./integrations/state_machine"
}

module "dd_integration_storage_gateway" {
  enable_integration = "${local.storage_gateway_enabled}"
  source             = "./integrations/storage_gateway"
}

module "dd_integration_vpn" {
  enable_integration = "${local.vpn_enabled}"
  source             = "./integrations/vpn"
}

module "dd_integration_waf" {
  enable_integration = "${local.waf_enabled}"
  source             = "./integrations/waf"
}

module "dd_integration_workspaces" {
  enable_integration = "${local.workspaces_enabled}"
  source             = "./integrations/workspaces"
}
