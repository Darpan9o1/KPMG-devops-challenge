
resource "azurerm_route_table" "routetable" {
  count                         ="${var.rt_enable  == 1 ? var.subnet_count : 0}"
  name                          = "${lower("rt-${var.environment}-${var.rt_name[count.index]}")}"
  location                      = "${var.region}"
  resource_group_name           = "${var.resource_group_name}"
  tags                          = "${var.tagvalue}"
}


resource "azurerm_route" "route" {
  count                         = "${var.rt_enable  == 1 ? var.subnet_count : 0}"
  name                          = "None"
  resource_group_name           = "${var.resource_group_name}"
  route_table_name              = "${lower("rt-${var.environment}-${var.rt_name[count.index]}")}"
  address_prefix                = "0.0.0.0/0"
  next_hop_type                 = "${count.index == 0 ? "Internet" : "None"}"
  depends_on                    = ["azurerm_route_table.routetable"]
}
