module "resource_group" {
  source = "../../modules/resource-group"

  name     = local.resource_group_name
  location = var.location
  tags     = local.common_tags
}

module "storage" {
  source = "../../modules/storage"

  resource_group_name = module.resource_group.name
  location            = var.location

  storage_account_name = local.storage_account_name

  tags = local.common_tags
}

module "key_vault" {
  source = "../../modules/key-vault"

  key_vault_name      = local.key_vault_name
  resource_group_name = module.resource_group.name
  location            = var.location

  tenant_id = data.azurerm_client_config.current.tenant_id

  tags = local.common_tags
}

module "managed_identity" {
  source = "../../modules/managed-identity"

  name                = local.managed_identity_name
  location            = var.location
  resource_group_name = module.resource_group.name

  tags = local.common_tags
}

module "log_analytics" {
  source = "../../modules/log-analytics"

  workspace_name      = local.log_analytics_workspace_name
  location            = var.location
  resource_group_name = module.resource_group.name

  tags = local.common_tags
}

module "application_insights" {
  source = "../../modules/application-insights"

  name                = local.application_insights_name
  location            = var.location
  resource_group_name = module.resource_group.name

  workspace_id = module.log_analytics.id

  tags = local.common_tags
}

module "diagnostic_settings" {
  source = "../../modules/diagnostic-settings"

  name                       = local.diagnostic_setting_name
  target_resource_id         = module.key_vault.id
  log_analytics_workspace_id = module.log_analytics.id
}

/*
module "web_app" {
  source = "../../modules/web-app"

  resource_group_name = module.resource_group.name
  location            = var.location

  app_service_plan_name = local.app_service_plan_name
  web_app_name          = local.web_app_name

  tags = local.common_tags
}
*/