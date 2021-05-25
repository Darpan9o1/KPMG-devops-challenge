# Source code for Creating network security group
resource "azurerm_network_security_group" "networksg" {
  count                       =  "${var.nsg_enable  == 1 ? var.subnet_count : 0}"
  name                        =  "${lower("nsg-${var.environment}-${var.nsg_name[count.index]}")}"
  location                    = "${var.region}"
  resource_group_name         = "${var.resource_group_name}"
  tags                        = "${var.tagvalue}"
}


# We could further add network security rules for each of the three tiers - web , app and DB layer
