output "vnet_subnets" {
  value  = "${azurerm_subnet.subnet.*.name}"
}


output "subnet_id" {
  value = "${azurerm_subnet.subnet.*.id}"
}