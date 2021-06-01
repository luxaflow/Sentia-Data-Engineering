resource "azurerm_resource_group" "data_factory_rg_name" {
  name     = var.data_factory_resource_group_name
  location = "West Europe"
}

resource "azurerm_data_factory" "data_factory" {
  name                    = var.data_factory_name
  location                = azurerm_resource_group.data_factory_rg_name.location
  resource_group_name     = azurerm_resource_group.data_factory_rg_name.name
  public_network_enabled  = false
}