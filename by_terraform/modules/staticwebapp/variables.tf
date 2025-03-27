variable "resource_group_name" {
description = "The name of the resource group"
type        = string
}

variable "location" {
description = "The Azure region to create the resource in"
type        = string
}

variable "staticwebapp_name" {
description = "The name of the storage account"
type        = string
}

variable "github_url" {
description = "github_url"
type        = string
}

variable "github_branch" {
description = "github branch"
type        = string
}

variable "github_token" {
description = "github token"
type        = string
}
