variable "network_resource_group_name" {
  type    = string
  default = "customer-vpn-gateway-rg"
}

variable "network_resource_group_location" {
  type    = string
  default = "West Europe"
}

variable "vnet_name" {
  type    = string
  default = "customer-data-vnet"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "vwan_name" {
  type    = string
  default = "customer-data-vwan"  
}

variable "vhub_name" {
  type    = string
  default = "customer-data-vhub"  
}

variable "vhub_address_prefix" {
  type    = string
  default = "10.0.1.0/24"
}

variable "vpn_gateway_name" {
  type    = string
  default = "customer-data-vpng"
}