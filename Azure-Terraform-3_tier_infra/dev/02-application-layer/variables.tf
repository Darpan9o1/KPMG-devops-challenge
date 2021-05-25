

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  default =  "RG_"
}


variable "region" {
  description = "The location/region where resources is created. Changing this forces a new resource to be created."
  default = "UK South"
}

variable "vnet_name" {
  
}


variable "subnet_names" {
  type = "list"
}
variable "tagvalue" {
    description = "The value for the tag"
    type = "map"
}


variable "environment" {
    description = "The environment name to be provided"
  
}


variable "public_ip_enable" {
  description = "The name Public IP enable"
  default = 0
}

variable "vm_public_ip_name" {
  
}

variable "public_ip_allocation_method" {
  description = "The Public Ip Allocation Method"
  default = ""
}


variable "private_ip_allocation_method" {
  description = "The Private Ip Allocation Method"
  default = ""
}


variable "frontend_ip_name" {
  type = "list"
  default = []
}

variable "nic_enable" {
  default = 1
}

variable "nic_name" {
  default = ""
}

variable "nic_type" {
 default = "" 
}


variable "nic_ip_config_name" {
 default = "" 
}

variable "nic_ip_allocation_method" {
  default = "static"
}

variable "vm_enable" {
 default = 1 
}

variable "vm_name" {
  
}


variable "vm_size" {
  
}

variable "image_publisher" {
  
}

variable "image_offer" {
  
}

variable "image_version" {
  
}


variable "image_sku" {
  
}

variable "vm_os_disk_name" {
  
}



variable "create_option" {
  
}

variable "managed_disk_type" {
  
}

variable "computer_name" {
  
}

variable "admin_username" {
  
}

variable "admin_password" {
  
}


variable "disable_password_authentication" {
 default = "false" 
}

variable "sku_type" {
  default = "Standard"
}
