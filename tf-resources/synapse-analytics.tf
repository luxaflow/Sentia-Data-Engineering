resource "azurerm_synapse_workspace" "synapse_workspace" {
  name                                 = var.syanpse_workspace_name
  resource_group_name                  = azurerm_resource_group.analytics_rg.name
  location                             = azurerm_resource_group.analytics_rg.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.data_lake_gen2_fs.id
  sql_administrator_login              = data.azurerm_key_vault_secret.sql_server_username.value
  sql_administrator_login_password     = data.azurerm_key_vault_secret.sql_server_password.value

  aad_admin {
    login     = data.azurerm_key_vault_secret.aad_object_username.value
    object_id = data.azurerm_key_vault_secret.aad_object_id.value
    tenant_id = data.azurerm_subscription.current.tenant_id
  }

  tags = {
    environment = var.environment
  }
}