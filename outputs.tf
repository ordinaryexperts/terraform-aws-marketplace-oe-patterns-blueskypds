output "vpc_id_output" {
  description = "The ID of the VPC."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["VpcIdOutput"]
}

output "vpc_private_subnet1_id_output" {
  description = "The ID of the first private VPC subnet."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["VpcPrivateSubnet1IdOutput"]
}

output "vpc_private_subnet2_id_output" {
  description = "The ID of the second private VPC subnet."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["VpcPrivateSubnet2IdOutput"]
}

output "vpc_public_subnet1_id_output" {
  description = "The ID of the first public VPC subnet."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["VpcPublicSubnet1IdOutput"]
}

output "vpc_public_subnet2_id_output" {
  description = "The ID of the second public VPC subnet."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["VpcPublicSubnet2IdOutput"]
}

output "dns_site_url_output" {
  description = "The URL Endpoint."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["DnsSiteUrlOutput"]
}

output "notification_topic_arn_output" {
  description = "The notification topic ARN."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["NotificationTopicArnOutput"]
}

output "asg_data_volume_backup_vault_arn_output" {
  description = "The data volume AWS Backup Vault ARN."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["AsgDataVolumeBackupVaultArnOutput"]
}

output "first_use_instructions" {
  description = "Instructions for getting started."
  value       = aws_cloudformation_stack.oe_patterns_blueskypds.outputs["FirstUseInstructions"]
}
