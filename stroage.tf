resource "azurerm_storage_account" "example" {
  name                     =var.stroage_name
  resource_group_name      = azurerm_resource_group.rgl-2.name
  location                 = azurerm_resource_group.rgl-2.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}