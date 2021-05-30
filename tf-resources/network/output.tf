output "network_resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" { 
  value = azurerm_virtual_network.vnet.name
} 

output "vnet_address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "vwan_id" {  
  value = azurerm_virtual_hub.vhub.virtual_wan_id
}

output "vwan_name" {  
  value = azurerm_virtual_wan.vwan.name
}

output "vhub_id" {  
  value = azurerm_virtual_hub.vhub.id
}

output "vhub_name" {
  value = azurerm_virtual_hub.vhub.name
}

output "vhub_address_prefix" {
 value = azurerm_virtual_hub.vhub.vhub_address_prefix
}

output "vhub_name" {
  value = azurerm_vpn_gateway.vpng.name
}