resource "azurerm_network_interface" "main" {
  name                = var.azurerm_network_interface_name
  location            = azurerm_resource_group.rgl-1.location
  resource_group_name = azurerm_resource_group.rgl-1.name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = azurerm_subnet.subnet-01.id
    private_ip_address_allocation = var.private_ip_address_allocation_name
        public_ip_address_id          = azurerm_public_ip.example.id
  }
}