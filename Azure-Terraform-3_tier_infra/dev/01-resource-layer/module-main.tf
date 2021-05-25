
module "Resources" {
  source = "./azure-resources/resource-layer"
    # Resources/Service Toggle 
    rg_enable                                = 1
    vnet_enable                              = 1
    subnet_count                             = 3
    er_subnet_enable                         = 1
    nsg_enable                               = 1
    rt_enable                                = 1

    # Resource layer parameter association
    resource_group_name                      = "${var.resource_group_name}"
    region                                   = "${var.region}"
    vnet_name                                = "${var.vnet_name}"
    vnet_address                             = "${var.vnet_address}"
    subnet_names                             = "${var.subnet_names}"
    subnet_range                             = "${var.subnet_range}"
    nsg_name                                 = "${var.nsg_names}"
    rt_name                                  = "${var.rt_names}"
    subnet_er                                = "${var.subnet_er}"
    subnet_er_range                          = "${var.subnet_er_range}"

    tagvalue                                 = "${var.tagvalue}"
    environment                              = "${var.environment}"
      
}
