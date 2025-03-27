provider "azurerm" {
features {}
subscription_id = "?????"
}

resource "azurerm_resource_group" "rg" {
name     = "?????"
location = "?????"
}

module "storage_account" {
  source                = "./modules/storage_account"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  storage_account_name  = "?????"
  depends_on = [azurerm_resource_group.rg]
}

module "storage_container" {
  source                 = "./modules/storage_container"
  storage_account_name   = "?????"
  storage_container_name = "?????"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
}

module "cognitive_account" {
  source                   = "./modules/cognitive_account"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  openai_name = "?????"
  speech_service_name = "?????"
}

module "staticwebapp" {
  source                = "./modules/staticwebapp"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = "East Asia"
  staticwebapp_name  = "staticapp-vr03"
  github_url        = "?????"
  github_branch     = "?????"
  github_token      = "?????"
}

module "container_registry" {
  source               = "./modules/container_registry"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = "?????"
  container_registry_name = "?????"
}

module "container_analyze_workspace" {
  source              = "./modules/container_analyze_workspace"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = "?????"
  log_analytics_workspace_name = "?????"
}

module "container_app_environment" {
  source              = "./modules/container_app_environment"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = "?????"
  container_app_environment_name = "?????"
  log_analytics_workspace_id =  module.container_analyze_workspace.log_analytics_workspace_id
}

module "key_vault" {
  source              = "./modules/key_vault"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = "?????"
  key_value = module.container_registry.admin_password
  tenant_id "?????"
  key_vault_name = "?????"
  key_vault_secret_name = "?????"
  container_registry_principal_id = module.container_registry.principal_id
  user_principal_id = "?????"
}


module "user_assigned_identity" {
  source              = "./modules/user_assigned_identity"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = "?????"
  user_assigned_identity_name = "?????"
  container_registry_id = module.container_registry.container_registry_id
}

module "container_app" {
  source              = "./modules/container_app"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = "?????"
  container_name        = "?????"
  container_app_name    = "?????"
  revision_name         = "?????"
  container_app_environment_id = module.container_app_environment.container_app_environment_id
  login_server = module.container_registry.login_server
  admin_username = module.container_registry.admin_username
  key_vault_secret_name = module.key_vault.key_vault_secret_name
  user_assigned_identity_id = module.user_assigned_identity.user_assigned_identity_id
}
