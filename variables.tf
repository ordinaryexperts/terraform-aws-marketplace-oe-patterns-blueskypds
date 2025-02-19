variable "alb_certificate_arn" {
  description = "Required: Specify the ARN of a ACM Certificate to configure HTTPS."
  type        = string
}

variable "alb_ingress_cidr" {
  description = "Required: VPC IPv4 CIDR block to restrict access to ALB."
  type        = string
}

variable "asg_desired_capacity" {
  description = "Required: The desired capacity of the Auto Scaling Group."
  type        = number
  default     = 1
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

variable "asg_max_size" {
  description = "Required: The maximum size of the Auto Scaling Group."
  type        = number
  default     = 2
}

variable "asg_min_size" {
  description = "Required: The minimum size of the Auto Scaling Group."
  type        = number
  default     = 1
}

variable "asg_reprovision_string" {
  description = "Optional: Changes to this parameter will force instance reprovision on the next CloudFormation update."
  type        = string
  default     = ""
}

variable "assets_bucket_name" {
  type        = string
  default     = ""
  description = "Optional: Name of the S3 bucket to store uploaded assets. If not specified, a bucket will be created."
}

variable "custom_config_js_parameter_arn" {
  type        = string
  default     = ""
  description = "Optional: ARN of SSM Parameter Store Secure String containing custom code to populate custom-config.js"
}

variable "custom_dot_env_parameter_arn" {
  type        = string
  default     = ""
  description = "Optional: ARN of SSM Parameter Store Secure String containing custom config to append to the auto-generated .env"
}

variable "custom_interface_config_js_parameter_arn" {
  type        = string
  default     = ""
  description = "Optional: ARN of SSM Parameter Store Secure String containing custom code to populate custom-interface-config.js"
}

variable "dns_hostname" {
  type        = string
  description = "Required: The hostname to access the service."
}

variable "dns_route53_hosted_zone_name" {
  type        = string
  description = "Required: Route 53 Hosted Zone name. Must already exist and match the domain part of the Hostname parameter, without trailing dot."
}

variable "stack_name" {
  type        = string
  description = "Name of the CloudFormation stack"
  default     = "oe-patterns-blueskypds"
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
  default     = false
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
