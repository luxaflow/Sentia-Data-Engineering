// Main Variables

variable "env" {
  type    = string
  default = "dev"
}

variable "main_location" {
  type        = string
  default     = "westeurope"
  description = "Main region location to be used for resources"
}

varaiable "fallback_location" {
  type        = string
  default     = "northeurope"
  description = "Fallback region location to be used for resources, region pair with westeurope"
}

// Resource Groups

variables "etl_rg_name" {
  type        = string
  description = "Name of resouce group for Azure Data Factory and its resources"
}

variable "network_rg_name" {
  type        = string
  description = "Name of resouce group for VPN Gateway and its resources"
}

// Key Vault

variable "keyvault_rg_name" {
  type        = string
  description = "Name of the resource group containing the required keyvault"
}

variable "keyvault_name" {
  type        = string
  description = "Name of the required keyvault"
}

variable "keyvault_sql_server_username" {
  type        = string 
  description = "Name for secret for sql server username"
  sensitive   = true
}

variable "keyvault_sql_server_password" {
  type        = string
  description = "Name for secret for sql server password"
  sensitive   = true
}

variable "keyvault_aad_object_id" {
  type        = string
  description = "Name for secret for azure active directory object id"
  sensitive   = true
}

variable "keyvault_aad_username" {
  type        = string
  description = "Name for secret for azure active directory username"
  sensitive   = true
}

// Data Factory

variable "data_factory_name" {
  type        = string
  description = "Name of the Azure Data Factory Workspace"
}

// Network (VPN Gateway)

variable "vnet_name" {
  type        = string
  description = "Name of vnet"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "List of IP address range(s) for vnet"
}

variable "vwan_name" {
  type        = string
  description = "Name of customer vwan"
}

variable "vhub_name" {
  type        = string
  description = "Name of customer vhub"
}

variable "vhub_address_prefix" {
  type        = string
  description = "IP Address prefix for vhub"
}

variable "vpn_gateway_name" {
  type        = string
  description = "Name of customer vhub"
}