locals {
  api_gateway_enabled                = "${contains(var.integrations, "api_gateway")}"
  alb_enabled                        = "${contains(var.integrations, "alb")}"
  autoscaling_enabled                = "${contains(var.integrations, "autoscaling")}"
  billing_enabled                    = "${contains(var.integrations, "billing")}"
  budgeting_enabled                  = "${contains(var.integrations, "budgeting")}"
  cloudfront_enabled                 = "${contains(var.integrations, "cloudfront")}"
  cloudsearch_enabled                = "${contains(var.integrations, "cloudsearch")}"
  cloudtrail_enabled                 = "${contains(var.integrations, "cloudtrail")}"
  cloudwatch_enabled                 = "${contains(var.integrations, "cloudwatch")}"
  code_deploy_enabled                = "${contains(var.integrations, "code_deploy")}"
  database_migration_service_enabled = "${contains(var.integrations, "database_migration_service")}"
  ddos_protection_enabled            = "${contains(var.integrations, "ddos_protection")}"
  direct_connect_enabled             = "${contains(var.integrations, "direct_connect")}"
  dynamodb_enabled                   = "${contains(var.integrations, "dynamodb")}"
  ebs_enabled                        = "${contains(var.integrations, "ebs")}"
  ec2_enabled                        = "${contains(var.integrations, "ec2")}"
  ec2_api_enabled                    = "${contains(var.integrations, "ec2_api")}"
  ec2_spot_fleet_enabled             = "${contains(var.integrations, "ec2_spot_fleet")}"
  ecs_enabled                        = "${contains(var.integrations, "ecs")}"
  efs_enabled                        = "${contains(var.integrations, "efs")}"
  elastic_beanstalk_enabled          = "${contains(var.integrations, "elastic_beanstalk")}"
  elastic_map_reduce_enabled         = "${contains(var.integrations, "emr")}"
  elastic_transcoder_enabled         = "${contains(var.integrations, "elastic_transcoder")}"
  elasticache_enabled                = "${contains(var.integrations, "elasticache")}"
  elb_enabled                        = "${contains(var.integrations, "elb")}"
  es_enabled                         = "${contains(var.integrations, "es")}"
  firehose_enabled                   = "${contains(var.integrations, "firehose")}"
  iot_enabled                        = "${contains(var.integrations, "iot")}"
  kinesis_enabled                    = "${contains(var.integrations, "kinesis")}"
  kinesis_analytics_enabled          = "${contains(var.integrations, "kinesis_analytics")}"
  kms_enabled                        = "${contains(var.integrations, "kms")}"
  lambda_enabled                     = "${contains(var.integrations, "lambda")}"
  lex_enabled                        = "${contains(var.integrations, "lex")}"
  logs_enabled                       = "${contains(var.integrations, "logs")}"
  machine_learning_enabled           = "${contains(var.integrations, "ml")}"
  mq_enabled                         = "${contains(var.integrations, "mq")}"
  nat_gateway_enabled                = "${contains(var.integrations, "nat_gateway")}"
  network_elb_enabled                = "${contains(var.integrations, "nlb")}"
  ops_works_enabled                  = "${contains(var.integrations, "ops_works")}"
  polly_enabled                      = "${contains(var.integrations, "polly")}"
  rds_enabled                        = "${contains(var.integrations, "rds")}"
  redshift_enabled                   = "${contains(var.integrations, "redshift")}"
  rekognition_enabled                = "${contains(var.integrations, "rekognition")}"
  route53_enabled                    = "${contains(var.integrations, "route53")}"
  s3_enabled                         = "${contains(var.integrations, "s3")}"
  sagemaker_enabled                  = "${contains(var.integrations, "sagemaker")}"
  ses_enabled                        = "${contains(var.integrations, "ses")}"
  simple_workflow_service_enabled    = "${contains(var.integrations, "swf")}"
  sns_enabled                        = "${contains(var.integrations, "sns")}"
  sqs_enabled                        = "${contains(var.integrations, "sqs")}"
  state_machine_enabled              = "${contains(var.integrations, "state_machine")}"
  storage_gateway_enabled            = "${contains(var.integrations, "storage_gateway")}"
  vpn_enabled                        = "${contains(var.integrations, "vpn")}"
  waf_enabled                        = "${contains(var.integrations, "waf")}"
  workspaces_enabled                 = "${contains(var.integrations, "workspaces")}"
}

module "dd_integration_api_gateway" {
  count  = "${local.api_gateway_enabled}"
  source = "./integrations/api_gateway"
}

module "dd_integration_alb" {
  count  = "${local.alb_enabled}"
  source = "./integrations/application_elb"
}

module "dd_integration_autoscaling" {
  count  = "${local.autoscaling_enabled}"
  source = "./integrations/autoscaling"
}

module "dd_integration_billing" {
  count  = "${local.billing_enabled}"
  source = "./integrations/billing"
}

module "dd_integration_budgeting" {
  count  = "${local.budgeting_enabled}"
  source = "./integrations/budgeting"
}

module "dd_integration_cloudfrontcloudfront" {
  count  = "${local.cloudfront_enabled}"
  source = "./integrations/cloudfront"
}

module "dd_integration_cloudsearch" {
  count  = "${local.cloudsearch_enabled}"
  source = "./integrations/cloudsearch"
}

module "dd_integration_cloudtrail" {
  count  = "${local.cloudtrail_enabled}"
  source = "./integrations/cloudtrail"
}

module "dd_integration_code_deploy" {
  count  = "${local.code_deploy_enabled}"
  source = "./integrations/code_deploy"
}

module "dd_integration_database_migration_service" {
  count  = "${local.database_migration_service_enabled}"
  source = "./integrations/database_migration_service"
}

module "dd_integration_ddos_protection" {
  count  = "${local.ddos_protection_enabled}"
  source = "./integrations/ddos_protection"
}

module "dd_integration_direct_connect" {
  count  = "${local.direct_connect_enabled}"
  source = "./integrations/direct_connect"
}

module "dd_integration_dynamodb" {
  count  = "${local.dynamodb_enabled}"
  source = "./integrations/dynamodb"
}

module "dd_integration_ebs" {
  count  = "${local.ebs_enabled}"
  source = "./integrations/ebs"
}

module "dd_integration_ec2" {
  count  = "${local.ec2_enabled}"
  source = "./integrations/ec2"
}

module "dd_integration_ec2_api" {
  count  = "${local.ec2_api_enabled}"
  source = "./integrations/ec2_api"
}

module "dd_integration_ec2_spot_fleet" {
  count  = "${local.ec2_spot_fleet_enabled}"
  source = "./integrations/ec2_spot_fleet"
}

module "dd_integration_ecs" {
  count  = "${local.ecs_enabled}"
  source = "./integrations/ecs"
}

module "dd_integration_efs" {
  count  = "${local.efs_enabled}"
  source = "./integrations/efs"
}

module "dd_integration_elastic_beanstalk" {
  count  = "${local.elastic_beanstalk_enabled}"
  source = "./integrations/elastic_beanstalk"
}

module "dd_integration_elastic_map_reduce" {
  count  = "${local.elastic_map_reduce_enabled}"
  source = "./integrations/elastic_map_reduce"
}

module "dd_integration_elastic_transcoder" {
  count  = "${local.elastic_transcoder_enabled}"
  source = "./integrations/elastic_transcoder"
}

module "dd_integration_elasticache" {
  count  = "${local.elasticache_enabled}"
  source = "./integrations/elasticache"
}

module "dd_integration_elb" {
  count  = "${local.elb_enabled}"
  source = "./integrations/elb"
}

module "dd_integration_es" {
  count  = "${local.es_enabled}"
  source = "./integrations/es"
}

module "dd_integration_firehose" {
  count  = "${local.firehose_enabled}"
  source = "./integrations/firehose"
}

module "dd_integration_iot" {
  count  = "${local.iot_enabled}"
  source = "./integrations/iot"
}

module "dd_integration_kinesis" {
  count  = "${local.kinesis_enabled}"
  source = "./integrations/kinesis"
}

module "dd_integration_kinesis_analytics" {
  count  = "${local.kinesis_analytics_enabled}"
  source = "./integrations/kinesis_analytics"
}

module "dd_integration_kms" {
  count  = "${local.kms_enabled}"
  source = "./integrations/kms"
}

module "dd_integration_lambda" {
  count  = "${local.lambda_enabled}"
  source = "./integrations/lambda"
}

module "dd_integration_lex" {
  count  = "${local.lex_enabled}"
  source = "./integrations/lex"
}

module "dd_integration_logs" {
  count  = "${local.logs_enabled}"
  source = "./integrations/logs"
}

module "dd_integration_machine_learning" {
  count  = "${local.machine_learning_enabled}"
  source = "./integrations/machine_learning"
}

module "dd_integration_mq" {
  count  = "${local.mq_enabled}"
  source = "./integrations/mq"
}

module "dd_integration_nat_gateway" {
  count  = "${local.nat_gateway_enabled}"
  source = "./integrations/nat_gateway"
}

module "dd_integration_network_elb" {
  count  = "${local.network_elb_enabled}"
  source = "./integrations/network_elb"
}

module "dd_integration_ops_works" {
  count  = "${local.ops_works_enabled}"
  source = "./integrations/ops_works"
}

module "dd_integration_polly" {
  count  = "${local.polly_enabled}"
  source = "./integrations/polly"
}

module "dd_integration_rds" {
  count  = "${local.rds_enabled}"
  source = "./integrations/rds"
}

module "dd_integration_redshift" {
  count  = "${local.redshift_enabled}"
  source = "./integrations/redshift"
}

module "dd_integration_rekognition" {
  count  = "${local.rekognition_enabled}"
  source = "./integrations/rekognition"
}

module "dd_integration_route53" {
  count  = "${local.route53_enabled}"
  source = "./integrations/route53"
}

module "dd_integration_s3" {
  count  = "${local.s3_enabled}"
  source = "./integrations/s3"
}

module "dd_integration_sagemaker" {
  count  = "${local.sagemaker_enabled}"
  source = "./integrations/sagemaker"
}

module "dd_integration_ses" {
  count  = "${local.ses_enabled}"
  source = "./integrations/ses"
}

module "dd_integration_simple_workflow_service" {
  count  = "${local.simple_workflow_service_enabled}"
  source = "./integrations/simple_workflow_service"
}

module "dd_integration_sns" {
  count  = "${local.sns_enabled}"
  source = "./integrations/sns"
}

module "dd_integration_sqs" {
  count  = "${local.sqs_enabled}"
  source = "./integrations/sqs"
}

module "dd_integration_state_machine" {
  count  = "${local.state_machine_enabled}"
  source = "./integrations/state_machine"
}

module "dd_integration_storage_gateway" {
  count  = "${local.storage_gateway_enabled}"
  source = "./integrations/storage_gateway"
}

module "dd_integration_vpn" {
  count  = "${local.vpn_enabled}"
  source = "./integrations/vpn"
}

module "dd_integration_waf" {
  count  = "${local.waf_enabled}"
  source = "./integrations/waf"
}

module "dd_integration_workspaces" {
  count  = "${local.workspaces_enabled}"
  source = "./integrations/workspaces"
}
