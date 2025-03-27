variable "resource_group_name" {
description = "The name of the resource group" 
type = string
}

variable "location" {
description = "The Azure region to create the resource in"
type = string
}

variable "container_app_environment_id"{
description = "The ID of the container app environment"
type = string
}

variable "container_name" {
description = "The name of the container"
type = string
}
 
variable "container_app_name" {
description = "The name of the container app"
type = string
}

variable "login_server"{
description = "The login server of container registry"
type = string
}

variable "admin_username"{
description = "The username of the container registry"
type = string
}


variable "revision_name" {
description = "The name of the revision"
type = string
}


variable "key_vault_secret_name" {
description = "The name of the key vault secret"
type = string
}

variable "user_assigned_identity_id" {
description = "user_assigned_identity_id"
type = string
}
