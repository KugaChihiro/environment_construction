variable "container_registry_id" {
description = "The ID of the container_registry"
type = string
}

variable "location" {
description = "The Azure region to create the resource in"
type = string
}

variable "user_assigned_identity_name" {
description = "user assigned name"
type = string
}

variable "resource_group_name" {
description = "The name of resource group"
type = string
}
