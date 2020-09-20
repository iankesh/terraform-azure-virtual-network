variable "address_space" {
  description = "The address space that is used by the virtual network."
  type        = string
  default     = "10.0.2.0/24"
}

variable "resource_group_name" {
  description = "The name of an existing resource group to be imported."
  type        = string
}

variable "name" {
  description = "(Required) The name of the virtual network"
  default     = "cloud-vnet"
}

variable "env" {
  description = "(Required) name of the resource group"
  default     = "cloud"
}

variable "location" {
  description = "(Required) location where this resource has to be created"
  default     = "westeurope"
}

variable "team_tag" {
  description = "(Optional) tag a team"
  default     = "DevOps"
}

variable "creator" {
  description = "(Optional) tag a creator"
  default     = "iankesh"
}

