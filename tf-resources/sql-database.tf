resource "azurerm_sql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.storage_rg.name
  location                     = azurerm_resource_group.storage_rg.location
  version                      = "12.0"
  administrator_login          = data.azurerm_key_vault_secret.sql_server_username.value
  administrator_login_password = data.azurerm_key_vault_secret.sql_server_password.value

  tags = {
    environment = var.environment
  }
}

resource "azurerm_sql_database" "sql_database" {
  name                = var.sql_database_name
  resource_group_name = azurerm_resource_group.storage_rg.name
  location            = azurerm_resource_group.storage_rg.location
  server_name         = azurerm_sql_server.sql_server.name

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.storage_account.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.storage_account.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }

  tags = {
    environment = var.environment
  }
}