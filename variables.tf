variable "request_crawl_from_bluesky" {
  description = "Optional: Request that this PDS be crawled by Bluesky network"
  type        = string
  default     = "true"
}

variable "alb_certificate_arn" {
  description = "Required: Specify the ARN of a ACM Certificate to configure HTTPS."
  type        = string
}

variable "alb_ingress_cidr" {
  description = "Required: VPC IPv4 CIDR block to restrict access to ALB."
  type        = string
}

variable "dns_hostname" {
  type        = string
  description = "Required: The hostname to access the service."
}

variable "dns_route53_hosted_zone_name" {
  type        = string
  description = "Required: Route 53 Hosted Zone name. Must already exist and match the domain part of the Hostname parameter, without trailing dot."
}

variable "asg_instance_type" {
  description = "Required: The EC2 instance type for the application Auto Scaling Group."
  type        = string
  default     = "t3.xlarge"
}

variable "asg_key_name" {
  description = "Optional: The EC2 key pair name for the instance."
  type        = string
  default     = ""
}

variable "asg_reprovision_string" {
  description = "Optional: Changes to this parameter will force instance reprovision on the next CloudFormation update."
  type        = string
  default     = ""
}

variable "asg_disk_usage_alarm_threshold" {
  description = "Required: The alarm threshold for disk usage percentage."
  type        = number
  default     = 80
}

variable "asg_data_volume_size" {
  description = "Required: Size of EBS data volume in GiBs."
  type        = number
  default     = 100
}

variable "asg_data_volume_snapshot" {
  description = "Optional: An EBS snapshot id to restore as a starting point for the data volume."
  type        = string
  default     = ""
}

variable "asg_data_volume_backup_retention_period" {
  description = "Required: The number of nightly EBS snapshots to retain."
  type        = number
  default     = 7
}

variable "asg_data_volume_backup_vault_arn" {
  description = "Optional: An AWS Backup Vault ARN to use for storing EBS backups. If not specified, a vault will be created."
  type        = string
  default     = ""
}

variable "ses_create_domain_identity" {
  description = "Optional: If 'true', a SES Domain Identity will be created from the hosted zone."
  type        = string
  default     = "true"
}

variable "ses_instance_user_access_key_serial" {
  description = "Optional: Incrementing this integer value will trigger a rotation of the Instance User Access Key."
  type        = number
  default     = 1
}

variable "notification_topic_email" {
  type        = string
  description = "Optional: Specify an email address to get emails about stack events."
}

variable "notification_topic_arn" {
  type        = string
  description = "Optional: Specify an ARN of an existing SNS topic to use for stack notifications."
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Optional: VPC IPv4 CIDR block if no VPC provided."
}

variable "vpc_id" {
  type        = string
  description = "Optional: Specify the VPC ID. If not specified, a VPC will be created."
  default     = ""
}

variable "vpc_nat_gateway_per_subnet" {
  type        = string
  default     = "false"
  description = "Optional: Set to 'true' to provision a NAT Gateway in each public subnet for AZ HA."
}

variable "vpc_private_subnet1_cidr" {
  type        = string
  default     = "10.0.128.0/18"
  description = "Optional: VPC IPv4 CIDR block of private subnet 1 if no VPC provided."
}

variable "vpc_private_subnet1_id" {
  type        = string
  default     = ""
  description = "Optional: Specify Subnet ID for private subnet 1."
}

variable "vpc_private_subnet2_cidr" {
  type        = string
  default     = "10.0.192.0/18"
  description = "Optional: VPC IPv4 CIDR block of private subnet 2 if no VPC provided."
}

variable "vpc_private_subnet2_id" {
  type        = string
  default     = ""
  description = "Optional: Specify Subnet ID for private subnet 2."
}

variable "vpc_public_subnet1_cidr" {
  type        = string
  default     = "10.0.0.0/18"
  description = "Optional: VPC IPv4 CIDR block of public subnet 1 if no VPC provided."
}

variable "vpc_public_subnet1_id" {
  type        = string
  default     = ""
  description = "Optional: Specify Subnet ID for public subnet 1."
}

variable "vpc_public_subnet2_cidr" {
  type        = string
  default     = "10.0.64.0/18"
  description = "Optional: VPC IPv4 CIDR block of public subnet 2 if no VPC provided."
}

variable "vpc_public_subnet2_id" {
  type        = string
  default     = ""
  description = "Optional: Specify Subnet ID for public subnet 2."
}
