output "storage_account_name" {
value = module.storage_account.storage_account_name
}

output "storage_container_name" {
value = module.storage_container.storage_container_name
}

output "staticwebapp_name" {
value = module.staticwebapp.staticwebapp_name
}

output "swa_api_key" {
value = module.staticwebapp.swa_api_key
sensitive = true
}

output  "speech_service_name" {
value = module.cognitive_account.speech_service_name
}

output "openai_name" {
value = module.cognitive_account.openai_name
}

output "container_registry_name" {
value = module.container_registry.container_registry_name
}

output "log_analytics_workspace_name" {
value = module.container_analyze_workspace.log_analytics_workspace_name
}

output "log_analytics_workspace_id" {
value = module.container_analyze_workspace.log_analytics_workspace_id
}

output "container_app_environment" {
value = module.container_app_environment.container_app_environment_name
}

output "principal_id" {
value = module.container_registry.principal_id
}

output "key_vault_name" {
value = module.key_vault.key_vault_name
}

output "key_vault_secret_name" {
value = module.key_vault.key_vault_secret_name
}

output "container_app_name" {
value = module.container_app.container_app_name
}
