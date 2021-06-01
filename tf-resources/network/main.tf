resource "azurerm_resource_group" "network_rg" {
  name     = var.network_resource_group_name
  location = var.network_resource_group_location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.network_rg.location
  resource_group_name = azurerm_resource_group.network_rg.name
  address_space       = var.vnet_address_space
}

resource "azurerm_virtual_wan" "vwan" {
  name                = var.vwan_name
  resource_group_name = azurerm_resource_group.rgnetwork_rg.name
  location            = azurerm_resource_group.network_rg.location
}

resource "azurerm_virtual_hub" "vhub" {
  name                = var.vhub_name
  resource_group_name = azurerm_resource_group.network_rg.name
  location            = azurerm_resource_group.network_rg.location
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = var.vhub_address_prefix
}

resource "azurerm_vpn_gateway" "vpng" {
  name                = var.vpn_gateway_name
  location            = azurerm_resource_group.network_rg.location
  resource_group_name = azurerm_resource_group.network_rg.name
  virtual_hub_id      = azurerm_virtual_hub.vhub.id
}