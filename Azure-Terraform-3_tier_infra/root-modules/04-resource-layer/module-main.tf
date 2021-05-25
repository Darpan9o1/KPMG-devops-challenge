# Modules definition for creating Key Vault's resource group
module "resource_group" {
 source                              = "../00-master-layer/resource-group"
 resource_group_name                 = "${var.resource_group_name}"
 region                              = "${var.region}"
 tagvalue                            = "${var.tagvalue}"
 environment                         = "${var.environment}"
}



# Module to create Vnet for our project
module "projectvnet" {
  source                                  = "../01-network-layer/vnet"
  resource_group_name                     = "${module.resource_group.resource_group_name}"
  vnet_enable                             = "${var.vnet_enable}"
  region                                  = "${var.region}"
  vnet_name                               = "${var.vnet_name}"
  vnet_address                            = "${var.vnet_address}"
  tagvalue                                = "${var.tagvalue}"
  environment                             = "${var.environment}"
 }

# Module to create Subnets
module "projectsubnet" {
  source                                  = "../01-network-layer/subnet"
  resource_group_name                     = "${module.resource_group.resource_group_name}"
  subnet_count                            = "${var.subnet_count}"
  vnet_name                               = "${module.projectvnet.vnet_name[0]}"
  subnet_names                            = "${var.subnet_names}"
  subnet_range                            = "${var.subnet_range}"
  environment                             = "${var.environment}"
  service_endpoints                       = "${var.service_endpoints}"
  service_endpoints_enable                 = "${var.service_endpoints_enable}"
 }


# Module to create NSG for our project
module "projectnsg" {
  source                                  = "../01-network-layer/nsg"
  nsg_enable                              = "${var.nsg_enable}"
  nsg_name                                = "${var.nsg_name}"
  subnet_count                            = "${var.subnet_count}"
  region                                  = "${var.region}"
  resource_group_name                     = "${module.resource_group.resource_group_name}"
  subnet_range                            = "${var.subnet_range}"
  nsg_tier1_rules                         = "${var.nsg_tier1_rules}"
  nsg_tier2_rules                         = "${var.nsg_tier2_rules}"
  nsg_tier3_rules                         = "${var.nsg_tier3_rules}"
  environment                             = "${var.environment}"
  tagvalue                                = "${var.tagvalue}"
  }


# Module for Subnet Associations with NSG's
module "nsg_association_subnet_Tiers" {
    source                                = "../01-network-layer/nsg-association"
    nsg_enable                            = "${var.nsg_enable}"
    subnet_count                          = "${var.subnet_count}"
    subnet_id                             = "${module.projectsubnet.subnet_id}"
    nsg_id                                = "${module.projectnsg.nsg_id}"
    
}


# Module to create Routetables
module "projectrt" {
    source                                = "../01-network-layer/routetable"
    rt_enable                             = "${var.rt_enable}"
    subnet_count                          = "${var.subnet_count}"
    rt_name                               = "${var.rt_name}"
    resource_group_name                   = "${module.resource_group.resource_group_name}"
    region                                = "${var.region}"
    tagvalue                              = "${var.tagvalue}"
    environment                           = "${var.environment}"
   }


# Module for routatable association with ER subnet
module "rt_association_ER_subnet" {
    source                                = "../01-network-layer/routetable-association"
    rt_enable                             = "${var.rt_enable}"
    subnet_count                          = "${var.er_subnet_enable}"
    subnet_id                             = "${module.projectsubnet_er.subnet_id}"
    rt_id                                 = "${module.projectrt_er.rt_id}"
    }



# Module to create ER Subnet
module "projectsubnet_er" {
  source                                  = "../subnet"
  resource_group_name                     = "${module.resource_group.resource_group_name}"
  subnet_count                            = "${var.er_subnet_enable}"
  vnet_name                               = "${module.projectvnet.vnet_name[0]}"
  subnet_names                            = "${var.subnet_er}"
  subnet_range                            = "${var.subnet_er_range}"
  environment                             = "${var.environment}"
  }


# Module to create Routatable for ER subnet
module "projectrt_er" {  
    source                                = "../routetable"
    rt_enable                             = "${var.rt_enable}"
    subnet_count                          = "${var.er_subnet_enable == 1 && var.rt_enable == 1 ? 1 : 0}"
    rt_name                               = ["${var.rt_name[3]}"]
    resource_group_name                   = "${module.resource_group.resource_group_name}"
    tagvalue                              = "${var.tagvalue}"
    environment                           = "${var.environment}"
    region                                = "${var.region}"
    }
