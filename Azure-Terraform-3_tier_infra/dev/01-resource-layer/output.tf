output "resource_group_name" {
  value = "${module.Resources.resource_group_name}"
}

output "region" {
  value       = "${module.Resources.region}"
}

output "vnet_name" {
  value       = "${module.Resources.vnet_name}"
}


output "vnet_subnets" {
  value       = "${module.Resources.vnet_subnets}"
}

output "subnet_id" {
  value       = "${module.Resources.subnet_id}"
}

output "nsg_names" {
  value        = "${module.Resources.nsg_names}"
}

output "nsg_id" {
  value       = "${module.Resources.nsg_id}"
}

output "rt_id" {
  value       = "${module.Resources.rt_id}"
}

output "rt_name" {
  value       = "${module.Resources.rt_name}"
}