
module "rgs" {
  source   = "../../module/resource_group"
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}

module "stgs" {
  source              = "../../module/storage_account"
  depends_on          = [module.rgs]
  for_each            = var.stgs
  name                = each.value.stgname
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

module "vnet" {
  source              = "../../module/vnet"
  depends_on          = [module.rgs]
  for_each = var.vnet
  resource_group_name = each.value.name
  vnetname            = each.value.vnetname
  location            = each.value.location
  address_space       = each.value.address_space
}

