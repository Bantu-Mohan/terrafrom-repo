resource "azurerm_subnet" "subnet-01" {
  name                 = var.subnet_name
  address_prefixes     = var.subnet_address
  virtual_network_name = azurerm_virtual_network.vnet-01.name
  resource_group_name  = azurerm_resource_group.rgl-1.name
}