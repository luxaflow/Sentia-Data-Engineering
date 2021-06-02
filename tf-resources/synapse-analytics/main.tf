resource "azurerm_resource_group" "synapse_analytics_rg" {
  name     = var.synapse_analytics_rg
  location = "West Europe"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.synapse_storage_account_name
  resource_group_name      = azurerm_resource_group.synapse_analytics_rg.name
  location                 = azurerm_resource_group.synapse_analytics_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "data_lake_gen2_fs" {
  name               = var.data_lake_gen2_fs_name
  storage_account_id = azurerm_storage_account.example.id
}

data "azurerm_resource_group" "keyvault_rg"{
  name = var.keyvault_rg_name
}

data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault_name
  resource_group_name = data.azurerm_resource_group.keyvault_rg.id
}

data "azurerm_key_vault_secret" "sql_server_username" {
  name         = var.keyvault_sql_server_username
  key_vault_id = data.azurerm_key_vault.existing.id
}

data "azurerm_key_vault_secret" "sql_server_password" {
  name         = var.keyvault_sql_server_password
  key_vault_id = data.azurerm_key_vault.existing.id
}

data "azurerm_key_vault_secret" "aad_object_id" {
  name         = var.keyvault_aad_object_id
  key_vault_id = data.azurerm_key_vault.existing.id
}

data "azurerm_key_vault_secret" "aad_object_username" {
  name         = var.keyvault_aad_username
  key_vault_id = data.azurerm_key_vault.existing.id
}

data "azurerm_subscription" "current" {
}

resource "azurerm_synapse_workspace" "synapse_workspace" {
  name                                 = var.syanpse_workspace_name
  resource_group_name                  = azurerm_resource_group.synapse_analytics_rg.name
  location                             = azurerm_resource_group.synapse_analytics_rg.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.example.id
  sql_administrator_login              = data.azurerm_key_vault_secret.sql_server_username.value
  sql_administrator_login_password     = data.azurerm_key_vault_secret.sql_server_password.value

  aad_admin {
    login     = data.azurerm_key_vault_secret.aad_object_username.value
    object_id = data.azurerm_key_vault_secret.aad_object_id.value
    tenant_id = data.azurerm_subscription.current.tenant_id
  }

  tags = {
    Env = var.environment
  }
}