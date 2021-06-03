data "azurerm_resource_group" "keyvault_rg"{
  name = var.keyvault_rg_name
}

data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault
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