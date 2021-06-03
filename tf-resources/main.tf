resource "azurerm_resource_group" "etl_rg" {
  name      = var.etl_rg_name
  location  = var.main_location
}

resource "azurerm_resource_group" "network_rg" {
  name     = var.network_rg_name
  location = var.main_location
}
