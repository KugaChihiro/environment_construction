resource "azurerm_container_app_environment" "container_app_environment" {
  name                = var.container_app_environment_name
  resource_group_name = var.resource_group_name
  location            = var.location
  log_analytics_workspace_id = var.log_analytics_workspace_id
}
