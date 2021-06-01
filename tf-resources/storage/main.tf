resource "azurerm_resource_group" "data_storage_rg" {
  name     = var.data_storage_rg_name
  location = "West Europe"
}

resource "azurerm_data_lake_store" "data_lake_store" {
  name                = var.data_lake_store_name
  resource_group_name = azurerm_resource_group.data_storage_rg.name
  location            = azurerm_resource_group.data_storage_rg.location
  encryption_state    = "Enabled"
  encryption_type     = "ServiceManaged"
}

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


resource "azurerm_sql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.data_storage_rg.name
  location                     = azurerm_resource_group.data_storage_rg.location
  version                      = "12.0"
  administrator_login          = data.azurerm_key_vault_secret.sql_server_username.value
  administrator_login_password = data.azurerm_key_vault_secret.sql_server_password.value

  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.data_storage_rg.name
  location                 = azurerm_resource_group.data_storage_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_sql_database" "sql_database" {
  name                = var.sql_database_name
  resource_group_name = azurerm_resource_group.data_storage_rg.name
  location            = azurerm_resource_group.data_storage_rg.location
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


resource "azurerm_cosmosdb_account" "cosmosdb_account" {
  name                = var.cosmosdb_account_name
  location            = azurerm_resource_group.data_storage_rg.location
  resource_group_name = azurerm_resource_group.data_storage_rg.name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  enable_automatic_failover = true

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location          = var.failover_location
    failover_priority = 1
  }

  geo_location {
    location          = azurerm_resource_group.rg.location
    failover_priority = 0
  }
}

