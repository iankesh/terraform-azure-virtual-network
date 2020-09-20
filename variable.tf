variable "address_space" {
  description = "(Required) The address space that is used by the virtual network."
  type        = string
  default     = "10.0.2.0/24"
}

variable "resource_group_name" {
  description = "(Required) The name of an existing resource group to be imported."
  type        = string
}

variable "name" {
  description = "(Required) The name of the virtual network"
  default     = "cloud-vnet"
}

variable "env" {
  description = "(Optional) name of the resource group"
  default     = "dev"
}

variable "team_tag" {
  description = "(Optional) tag a team"
  default     = "DevOps"
}

variable "creator" {
  description = "(Optional) tag a creator"
  default     = "iankesh"
}

