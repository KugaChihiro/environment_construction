resource "azurerm_static_web_app" "staticwebapp" {
name  = var.staticwebapp_name
location = var.location
resource_group_name = var.resource_group_name
sku_tier = "Standard"
sku_size = "Standard"
repository_url      = var.github_url
repository_branch   = var.github_branch
repository_token    = var.github_token

  identity {
    type = "SystemAssigned"
  }
}
