output "resource_group_name" {
  value = module.resource_group.name
}

output "resource_group_id" {
  value = module.resource_group.id
}

output "key_vault_name" {
  value = module.key_vault.name
}

output "key_vault_uri" {
  value = module.key_vault.vault_uri
}

output "managed_identity_name" {
  value = module.managed_identity.name
}

output "managed_identity_client_id" {
  value = module.managed_identity.client_id
}

output "log_analytics_workspace_name" {
  value = module.log_analytics.name
}

output "log_analytics_workspace_id" {
  value = module.log_analytics.id
}

output "application_insights_name" {
  value = module.application_insights.name
}

output "application_insights_connection_string" {
  value     = module.application_insights.connection_string
  sensitive = true
}

output "diagnostic_setting_id" {
  value = module.diagnostic_settings.id
}

/*
output "app_service_plan_name" {
  value = module.web_app.service_plan_name
}

output "web_app_name" {
  value = module.web_app.web_app_name
}


output "web_app_default_hostname" {
  value = module.web_app.default_hostname
}
*/

output "storage_account_name" {
  value = module.storage.name
}

output "storage_blob_endpoint" {
  value = module.storage.primary_blob_endpoint
}