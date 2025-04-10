resource "azurerm_resource_group" "rgl-1" {
  name     = var.rg_name
  location = var.rg_location
}
resource "azurerm_resource_group" "rgl-2" {
  name     = var.rg_name_2
  location = var.rg_location_2
}