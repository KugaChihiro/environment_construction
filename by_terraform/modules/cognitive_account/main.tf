resource "azurerm_cognitive_account" "openai_account" {
  name                = var.openai_name
  resource_group_name = var.resource_group_name
  location            = var.location
  kind                = "OpenAI"
  sku_name            = "S0"
}



resource "azurerm_cognitive_account" "speech_service" {
  name                = var.speech_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = "S0"
  kind                = "SpeechServices"
} 
