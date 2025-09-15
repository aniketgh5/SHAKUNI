resource "azurerm_subnet" "subnetblock" {
  name                 = var.name
  resource_group_name  = var.name
  virtual_network_name = var.vnetname
  address_prefixes     = var.address_prefixes


}