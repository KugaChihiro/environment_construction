resource "azurerm_user_assigned_identity" "containerapp" {
  location            = var.location
  name                = var.user_assigned_identity_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_role_assignment" "containerapp" {
  scope                = var.container_registry_id
  role_definition_name = "acrpull"
  principal_id         = azurerm_user_assigned_identity.containerapp.principal_id
  depends_on = [
    azurerm_user_assigned_identity.containerapp
  ]
}
