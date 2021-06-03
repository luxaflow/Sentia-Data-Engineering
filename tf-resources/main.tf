resource "azurerm_resource_group" "etl_rg" {
  name      = var.etl_rg_name
  location  = var.main_location
}