resource "azurerm_windows_virtual_machine" "example" {
  name                = var.vm_name 
  resource_group_name = azurerm_resource_group.rgl-1.name
  location            = azurerm_resource_group.rgl-1.location
  size                = "Standard_F2"
  admin_username      =var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}