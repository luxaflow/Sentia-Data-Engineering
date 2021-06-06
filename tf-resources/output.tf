// Resource Groups

output "etl_rg" {
  name = azurerm_resource_group.etl_rg.name
}

output "network_rg" {
  name = azurerm_resource_group.network_rg.name
}

output "storage_rg_name" {
  value = azurerm_resource_group.storage_rg.name
}

// Data Factory

output "data_factory_name" {
  value = azurerm_data_factory.data_factory.name
}

// Network 

output "network_resource_group_name" {
  value = azurerm_resource_group.network_rg.name
}

output "vnet_name" { 
  value = azurerm_virtual_network.vnet.name
} 

output "vnet_address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "vwan_id" {  
  value = azurerm_virtual_hub.vhub.virtual_wan_id
}

output "vwan_name" {  
  value = azurerm_virtual_wan.vwan.name
}

output "vhub_id" {  
  value = azurerm_virtual_hub.vhub.id
}

output "vhub_name" {
  value = azurerm_virtual_hub.vhub.name
}

output "vhub_address_prefix" {
 value = azurerm_virtual_hub.vhub.vhub_address_prefix
}

output "vpng_name" {
  value = azurerm_vpn_gateway
}

// Data Lake Gen2

output "data_lake_gen2_name"{
  value = azurerm_data_lake_store.data_lake_store.name
}

// SQL

output "sql_server_name" {
  value = azurerm_sql_server.sql_server.name
}

output "sql_database_name" {
  value = azurerm_sql_database.sql_database.name
}

// Storage Account

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

// Cosmos DB

output "cosmosdb_account_name" {
  value = azurerm_cosmosdb_account.cosmosdb_account.name
}

output "cosmosdb_location" {
  value = azurerm_resource_group.data_storage_rg.location
}