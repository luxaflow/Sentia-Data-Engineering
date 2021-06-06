resource "azurerm_cosmosdb_account" "cosmosdb_account" {
  name                = var.cosmosdb_account_name
  location            = azurerm_resource_group.storage_rg.location
  resource_group_name = azurerm_resource_group.storage_rg.name
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
    location          = var.fallback_location
    failover_priority = 1
  }

  geo_location {
    location          = var.main_location
    failover_priority = 0
  }
}

