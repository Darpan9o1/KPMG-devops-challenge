variable "resource_group_name" {
}

variable "region" {
  }

variable "vnet_enable" {
  
}

variable "vnet_name" {
   type = "list"
}

variable "vnet_address" {
    type = "list"
}

variable "tagvalue" {
  type = "map"
}

variable "environment" {
}
