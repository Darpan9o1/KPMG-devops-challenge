
output "resource_group_name" {
  value = "${module.projectvnet.resource_group_name}"
}

output "region" {
  value       = "${module.projectvnet.region}"
}

output "vnet_name" {
  value       = "${module.projectvnet.vnet_name}"
}

output "vnet_address_space" {
  value       = "${module.projectvnet.vnet_address_space}"
}

output "vnet_subnets" {
  value       = "${module.projectsubnet.vnet_subnets}"
}

output "subnet_id" {
  value       = "${module.projectsubnet.subnet_id}"
}

output "nsg_names" {
  value        = "${module.projectnsg.nsg_names}"
}


output "nsg_id" {
  value       = "${module.projectnsg.nsg_id}"
}

output "rt_id" {
  value       = "${module.projectrt.rt_id}"
}

output "rt_name" {
  value       = "${module.projectrt.rt_name}"
}