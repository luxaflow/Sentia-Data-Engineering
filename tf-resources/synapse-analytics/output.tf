output "synapse_analytics_rg_name" {
  value = azurerm_resource_group.synapse_analytics_rg.name
}

output "synapse_storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "data_lake_gen2_fs_name" {
  value = azurerm_storage_data_lake_gen2_filesystem.data_lake_gen2_fs.name
}

output "synapse_workspace_name" {
  value = azurerm_synapse_workspace.synapse_workspace.name
}