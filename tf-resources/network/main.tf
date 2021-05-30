resource "azurerm_resource_group" "rg" {
  name     = "customer-vpn-gateway-rg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "customer-network"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_virtual_wan" "vwan" {
  name                = "customer-vwan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

resource "azurerm_virtual_hub" "vhub" {
  name                = "customer-hub"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = "10.0.1.0/24"
}

resource "azurerm_vpn_gateway" "vpng" {
  name                = "customer-vpng"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  virtual_hub_id      = azurerm_virtual_hub.vhub.id
}