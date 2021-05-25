variable "rg_enable" {
    default = 1 
}


variable "resource_group_name" {
    description = "The name of resource group"
}



variable "region" {
    description = "The location of resource group"
}



variable "tagvalue" {
    type = "map"
}


variable "environment" {
  
}
