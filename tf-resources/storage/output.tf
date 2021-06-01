output "data_storage_rg_name" {
  value = azurerm_resource_group.data_storage_rg.name
}

output "data_lake_store_name"{
  value = azurerm_data_lake_store.data_lake_store.name
}

output "sql_server_name" {
  value = azurerm_sql_server.sql_server.name
}

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "sql_database_name" {
  value = azurerm_sql_database.sql_database.name
}

output "cosmosdb_account_name" {
  value = azurerm_cosmosdb_account.cosmosdb_account.name
}

output "cosmosdb_location" {
  value = azurerm_resource_group.data_storage_rg.location
}