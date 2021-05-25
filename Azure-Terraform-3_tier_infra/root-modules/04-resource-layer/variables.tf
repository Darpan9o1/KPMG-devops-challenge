

variable "vnet_name" {
  type = "list"
  default = [""]
}

variable "resource_group_name" {
  default =  "RG_"
}


variable "region" {
  default = "UK South"
}

variable "vnet_address" {
  type = "list"
  default = ["10.30.0.0/16"]
}


variable "subnet_names" {
  type="list"
  default = ["Subnet_CE_Tier1","Subnet_CE_Tier2","Subnet_CE_Tier3","Subnet_CE_ER" ,"Subnet_CE_Management"]
}


variable "subnet_range" {
  type="list"
  default = ["10.30.0.0/24","10.30.1.0/24","10.30.2.0/24","10.30.3.0/24","10.30.4.0/24"]
}


variable "nsg_name" {
    type = "list"
    default = [""]
}


variable "rt_name" {
    type = "list"
  default = [""]
}


variable "subnet_er" { 
    type = "list"
}

variable "subnet_er_range" {
  type = "list"
}

variable "rg_enable" {
  default = 1
}


variable "vnet_enable" {
  default = 0
}


variable "subnet_count" {
  default = 0
}


variable "nsg_enable" {
  default = 0
}


variable "rt_enable" {
  default = 0
}

variable "er_subnet_enable" {
  default = 0
}


variable "tagvalue" {
    description = "The value for the tag"
    type = "map"
}


variable "environment" {
    description = "The environment name to be provided"
  
}
