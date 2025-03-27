output "container_registry_name" {
value = azurerm_container_registry.container_registry.name 
}

output "login_server" {
value = azurerm_container_registry.container_registry.login_server
}

output "admin_username" {
value = azurerm_container_registry.container_registry.admin_username
}

output "admin_password" {
value = azurerm_container_registry.container_registry.admin_password
}

output "principal_id" {
value = azurerm_container_registry.container_registry.identity[0].principal_id
}

output "container_registry_id" {
value = azurerm_container_registry.container_registry.id
}
