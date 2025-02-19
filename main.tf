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

  template_url = ""

  capabilities = ["CAPABILITY_NAMED_IAM"]

  # timeouts
  timeout_in_minutes = 120
  timeouts {
    create = "120m"
  }

  parameters = {
    AlbCertificateArn                   = var.alb_certificate_arn
    AlbIngressCidr                      = var.alb_ingress_cidr
    AsgDesiredCapacity                  = var.asg_desired_capacity
    AsgInstanceType                     = var.asg_instance_type
    AsgKeyName                          = var.asg_key_name
    AsgMaxSize                          = var.asg_max_size
    AsgMinSize                          = var.asg_min_size
    AsgReprovisionString                = var.asg_reprovision_string
    AssetsBucketName                    = var.assets_bucket_name
    CustomConfigJsParameterArn          = var.custom_config_js_parameter_arn
    CustomDotEnvParameterArn            = var.custom_dot_env_parameter_arn
    CustomInterfaceConfigJsParameterArn = var.custom_interface_config_js_parameter_arn
    DnsHostname                         = var.dns_hostname
    DnsRoute53HostedZoneName            = var.dns_route53_hosted_zone_name
    VpcCidr                             = var.vpc_cidr
    VpcId                               = var.vpc_id
    VpcNatGatewayPerSubnet              = var.vpc_nat_gateway_per_subnet
    VpcPrivateSubnet1Cidr               = var.vpc_private_subnet1_cidr
    VpcPrivateSubnet1Id                 = var.vpc_private_subnet1_id
    VpcPrivateSubnet2Cidr               = var.vpc_private_subnet2_cidr
    VpcPrivateSubnet2Id                 = var.vpc_private_subnet2_id
    VpcPublicSubnet1Cidr                = var.vpc_public_subnet1_cidr
    VpcPublicSubnet1Id                  = var.vpc_public_subnet1_id
    VpcPublicSubnet2Cidr                = var.vpc_public_subnet2_cidr
    VpcPublicSubnet2Id                  = var.vpc_public_subnet2_id
  }
}
