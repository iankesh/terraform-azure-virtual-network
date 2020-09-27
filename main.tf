data "azurerm_resource_group" "azure_rg" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "az_vnet" {
  name                = var.name
  location            = data.azurerm_resource_group.azure_rg.location
  resource_group_name = data.azurerm_resource_group.azure_rg.name
  address_space       = [var.address_space]

  tags = {
    Region      = data.azurerm_resource_group.azure_rg.location
    Team        = var.team_tag
    Environment = var.env
    Creator     = var.creator
  }
}
