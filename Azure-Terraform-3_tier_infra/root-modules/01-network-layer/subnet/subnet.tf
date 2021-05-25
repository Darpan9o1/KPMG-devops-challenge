resource "azurerm_subnet" "subnet" {
  count                     = "${var.subnet_count}"
  name                      = "${var.subnet_names[count.index] == "GatewaySubnet" ? "GatewaySubnet" : "subnet-${lower(var.environment)}-${lower(var.subnet_names[count.index])}"}"
  virtual_network_name      = "${var.vnet_name}"
  resource_group_name       = "${var.resource_group_name}"
  address_prefix            = "${var.subnet_range[count.index]}"
}