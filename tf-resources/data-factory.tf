resource "azurerm_data_factory" "data_factory" {
  name                    = var.data_factory_name
  location                = azurerm_resource_group.etl_rg.location
  resource_group_name     = azurerm_resource_group.etl_rg.name
  public_network_enabled  = false
}