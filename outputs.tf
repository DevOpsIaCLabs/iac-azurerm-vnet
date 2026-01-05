output "vnet_id" {
  description = "ID of the created virtual Network"
  value       = azurerm_virtual_network.az_vnet.id
}

output "vnet_name" {
  description = "Name of the created virtual Network"
  value       = azurerm_virtual_network.az_vnet.name
}

output "address_space" {
  description = "Address space of the vNet"
  value       = azurerm_virtual_network.az_vnet.address_space
}

output "dns_server" {
  description = "DNS servers configured on the vNet"
  value       = azurerm_virtual_network.az_vnet.dns_servers
}