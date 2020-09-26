output "az_vnet_id" {
  description = "The id of the newly created vNet"
  value = azurerm_virtual_network.az_vnet.id
}

output "az_vnet_name" {
  description = "The Name of the newly created vNet"
  value = azurerm_virtual_network.az_vnet.name
}

output "az_vnet_location" {
  description = "The location of the newly created vNet"
  value = azurerm_virtual_network.az_vnet.location
}

output "az_vnet_address_space" {
  description = "The address space of the newly created vNet"
  value = azurerm_virtual_network.az_vnet.address_space
}
