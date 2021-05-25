module "inspec-azure-terraform-demo" {
  source = "../../.."

  resource_group  = var.resource_group
  admin_username  = "admin"
  admin_password  = "Welcome@1"
}