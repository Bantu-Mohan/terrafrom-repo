resource "azurerm_public_ip" "example" {
  name                =var.publicip_name
  resource_group_name = azurerm_resource_group.rgl-1.name
  location            = azurerm_resource_group.rgl-1.location
  allocation_method   = var.allocation_method_name

}