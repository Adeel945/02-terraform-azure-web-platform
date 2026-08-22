output "web_app_name" {
  value = azurerm_linux_web_app.this.name
}

output "web_app_id" {
  value = azurerm_linux_web_app.this.id
}

output "default_hostname" {
  value = azurerm_linux_web_app.this.default_hostname
}

output "service_plan_name" {
  value = azurerm_service_plan.this.name
}