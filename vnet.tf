resource "azurerm_virtual_network" "vnet-01" {
  name                = var.vnet01_name
  location            = azurerm_resource_group.rgl-1.location
  resource_group_name = azurerm_resource_group.rgl-1.name
  address_space       = var.vnet_address


}

resource "azurerm_virtual_network" "vnet-02" {
  name                = var.vnet02_name
  location            = azurerm_resource_group.rgl-2.location
  resource_group_name = azurerm_resource_group.rgl-2.name
  address_space       = var.vnet2_address

}
