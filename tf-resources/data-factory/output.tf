output "data_factory_resource_group_name" {
  value = azurerm_resource_group.data_factory_rg.name
}

output "data_factory_name" {
  value = azurerm_data_factory.data_factory.name
}