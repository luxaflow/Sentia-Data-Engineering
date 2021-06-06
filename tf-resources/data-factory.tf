resource "azurerm_data_factory" "data_factory" {
  name                    = var.data_factory_name
  location                = azurerm_resource_group.etl_rg.location
  resource_group_name     = azurerm_resource_group.etl_rg.name
  public_network_enabled  = false
}

resource "azurerm_monitor_diagnostic_setting" "data_factory_diagnostic_settings" {
  name                        = var.data_factory_diagnostic_settings_name
  target_resource_id          = azurerm_vpn_gateway.vpng.id
  log_analytics_workspace_id  = azurerm_log_analytics_workspace.id

  log {
    category = "AuditEvent"
    enabled  = false

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
}