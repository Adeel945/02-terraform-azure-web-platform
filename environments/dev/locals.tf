locals {
  project_name = "web-platform"
  environment  = "dev"

  resource_group_name          = "rg-web-platform-dev-uks"
  app_service_plan_name        = "asp-web-platform-dev-uks"
  web_app_name                 = "app-web-platform-dev-uks"
  storage_account_name         = "stwebplatformdevuks"
  key_vault_name               = "kv-web-platform-dev-uks"
  managed_identity_name        = "id-web-platform-dev-uks"
  log_analytics_workspace_name = "law-web-platform-dev-uks"
  application_insights_name    = "appi-web-platform-dev-uks"
  diagnostic_setting_name      = "diag-web-platform-dev-uks"

  common_tags = {
    Environment = local.environment
    Project     = "Azure Web Platform"
    ManagedBy   = "Terraform"
    Owner       = "Adeel"
    CostCentre  = "Portfolio"
    Repository  = "02-terraform-azure-web-platform"
  }
}