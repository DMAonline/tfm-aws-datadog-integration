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
