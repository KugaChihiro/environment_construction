output "staticwebapp_name" {
value = azurerm_static_web_app.staticwebapp.name
}

output "swa_api_key" {
value = azurerm_static_web_app.staticwebapp.api_key
sensitive = true
}
