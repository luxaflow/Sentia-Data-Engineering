resource "azurerm_log_analytics_workspace" "logs-workspace" {
  name                = var.log_analytics_workspace_name
  location            = azurerm_resource_group.logs_rg.location
  resource_group_name = azurerm_resource_group.logs_rg.name
  sku                 = "Standard"
  retention_in_days   = 30
}