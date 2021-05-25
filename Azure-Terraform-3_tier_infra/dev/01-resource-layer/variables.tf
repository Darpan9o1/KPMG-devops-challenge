variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  default = "networking"
}


variable "region" {
  description = "The location/region where resources is created. Changing this forces a new resource to be created."
  default = ""
}


variable "vnet_enable" {
  description = "The name of Vnet Enable"
  default = 0
}



variable "vnet_address" {
  description = "The address of the virtual network where the virtual machines will reside"
  type = "list"
  default = [""]
}


variable "vnet_name" {
  description = "The name of the virtual network where the virtual machines will reside."
  type = "list"
  default = [""]
}

variable "subnet_count" {
  description = "The name Subnet Count"
  default = 0
}


variable "subnet_names" {
  description = "The subnet name of the virtual network where the virtual machines will reside."
  type="list"
  default = [""]
}


variable "subnet_range" {
  description = "The subnet id of the virtual network where the virtual machines will reside."
  type="list"
  default = [""]
}


variable "er_subnet_enable" {
  description = "The name for ER Subnet Enable"
  default = 0
}


variable "subnet_er_range" {
  description = "The name of the subnet ranges"
  type = "list"
  default  = [""]
}


variable "subnet_er" { 
  description = "The name of the subnet ER"
  type = "list"
  default = [""]
}


# Variable Declaration for NSG enable/disable flag
variable "nsg_enable" {
  description = "The name of NSG Enable"
  default = 0
}


# Variable Declaration for NSG names to be created
variable "nsg_names" {
    description = "The list of NSG names."
    type = "list"
    default = [""]
}


# Variable Declaration for RT enable/disable flag
variable "rt_enable" {
  description = "The name for the RT Enable"
  default = 0
}


# Variable Declaration for Route tables name to be created
variable "rt_names" {
  description = "The route table name list."
  type = "list"
  default = [""]
}



#Variable Declaration for Tag Value
variable "tagvalue" {
    description = "The value for the tag"
    type="map"
}


#Variable Declaration for Environment Tag
variable "environment" {
    description = "The environment name to be provided"
    default = ""
}
