variable "tenant_id" {
description = "The ID of tenant"
type = string
}

variable "key_vault_name" {
description = "The name of the key vault"
type = string
}

variable "key_vault_secret_name" {
description = "The name of the key vault secret"
type = string
}

variable "resource_group_name" {
description = "The name of the resource group"
type = string
}

variable "location" {
description = "The Azure region to create the resource in"
type = string
}

variable "key_value" {
description = "The value of key vault secret"
type = string
}

variable "container_registry_principal_id" {
description = "Principal ID of the container registry"
type = string
}

variable "user_principal_id" {
description = "Principal ID of the user"
type = string
}
