terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  required_version = ">= 1.0"
}

resource "aws_cloudformation_stack" "oe_patterns_blueskypds" {
  name = var.stack_name

  template_url = "https://s3.amazonaws.com/awsmp-fulfillment-cf-templates-prod/prod-ufpvcz32f2pdq/2c0ea4c290934e43ba06b67be68f67e2.template"

  capabilities = ["CAPABILITY_NAMED_IAM"]

  # timeouts
  timeout_in_minutes = 120
  timeouts {
    create = "120m"
  }

  parameters = {
    AlbCertificateArn                  = var.alb_certificate_arn
    AlbIngressCidr                     = var.alb_ingress_cidr
    AsgDataVolumeBackupRetentionPeriod = var.asg_data_volume_backup_retention_period
    AsgDataVolumeBackupVaultArn        = var.asg_data_volume_backup_vault_arn
    AsgDataVolumeSize                  = var.asg_data_volume_size
    AsgDataVolumeSnapshot              = var.asg_data_volume_snapshot
    AsgDiskUsageAlarmThreshold         = var.asg_disk_usage_alarm_threshold
    AsgInstanceType                    = var.asg_instance_type
    AsgKeyName                         = var.asg_key_name
    AsgReprovisionString               = var.asg_reprovision_string
    DnsHostname                        = var.dns_hostname
    DnsRoute53HostedZoneName           = var.dns_route53_hosted_zone_name
    NotificationTopicArn               = var.notification_topic_arn
    NotificationTopicEmail             = var.notification_topic_email
    RequestCrawlFromBluesky            = var.request_crawl_from_bluesky
    SesCreateDomainIdentity            = var.ses_create_domain_identity
    SesInstanceUserAccessKeySerial     = var.ses_instance_user_access_key_serial
    VpcCidr                            = var.vpc_cidr
    VpcId                              = var.vpc_id
    VpcNatGatewayPerSubnet             = var.vpc_nat_gateway_per_subnet
    VpcPrivateSubnet1Cidr              = var.vpc_private_subnet1_cidr
    VpcPrivateSubnet1Id                = var.vpc_private_subnet1_id
    VpcPrivateSubnet2Cidr              = var.vpc_private_subnet2_cidr
    VpcPrivateSubnet2Id                = var.vpc_private_subnet2_id
    VpcPublicSubnet1Cidr               = var.vpc_public_subnet1_cidr
    VpcPublicSubnet1Id                 = var.vpc_public_subnet1_id
    VpcPublicSubnet2Cidr               = var.vpc_public_subnet2_cidr
    VpcPublicSubnet2Id                 = var.vpc_public_subnet2_id
  }
}
