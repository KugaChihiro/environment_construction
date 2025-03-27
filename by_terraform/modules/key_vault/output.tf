output "key_vault_name" {
value = azurerm_key_vault.key_vault.name
}

output "key_vault_secret_name" {
value = azurerm_key_vault_secret.key_vault_secret.name
}
