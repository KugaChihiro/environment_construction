resource "azurerm_container_registry" "container_registry" {
  name                = var.container_registry_name
  resource_group_name = var.resource_group_name
  location           = var.location
  sku                = "Basic"
  admin_enabled      = true
  public_network_access_enabled = true

  identity {
    type = "SystemAssigned"
  }
}
