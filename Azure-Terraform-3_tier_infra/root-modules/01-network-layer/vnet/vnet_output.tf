
output "region" {
  description = "created Resource Groups"
  value       = "${azurerm_virtual_network.vnet.*.location}"
}

output "vnet_name" {
  description = "created vNet"
  value       = "${azurerm_virtual_network.vnet.*.name}"
}

output "vnet_id" {
  description = "created vNet"
  value       = "${azurerm_virtual_network.vnet.*.id}"
}

output "vnet_address_space" {
  description = "created vNet address space"
  value       = "${azurerm_virtual_network.vnet.*.address_space}"
}

output "resource_group_name" {
  value   ="${azurerm_virtual_network.vnet.*.resource_group_name}"
}
