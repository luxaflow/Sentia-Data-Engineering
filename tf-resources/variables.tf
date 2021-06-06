// Main Variables

variable "environment" {
  type    = string
  default = "dev"

  validation {
    condition = var.environment == "dev" || var.environment == "test" || var.environment == "uat" || var.environment == "prod" 
    error_message = "allowed values are dev, test, uat or prod for the environment."
  }
}

variable "main_location" {
  type        = string
  default     = "westeurope"
  description = "Main region location to be used for resources"
}

variable "fallback_location" {
  type        = string
  default     = "northeurope"
  description = "Fallback region location to be used for resources, region pair with westeurope"
}

// Resource Groups

variable "etl_rg_name" {
  type        = string
  description = "Name of resouce group for Azure Data Factory and its resources"
}

variable "network_rg_name" {
  type        = string
  description = "Name of resouce group for VPN Gateway and its resources"
}

variable "storage_rg_name" {
  type        = string
  description = "Name of resouce group for VPN Gateway and its resources"
}

variable "analytics_rg" {
  type        = string
  description = "Name of resouce group for Synapse Analytics and its resources"
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

variable "data_factory_diagnostic_settings_name" {
  type        = string
  description = "Name of Diagnostic setting for Data Factory"
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

variable "vpng_diagnostic_settings_name" {
  type        =  string
  description = "Name of diagnostic setting for VPN Gateway" 
}

// Data Lake

variable "data_lake_gen2_fs_name" {
  type        = string
  description = "Name of Data Lake Gen2 File System"
}

// SQL

variable "sql_server_name" {
  type        = string
  description = "Name of sql server instance"
}

variable "sql_database_name" {
  type        = string
  description = "Name of SQL database" 
}

// Storage Account

variable "storage_account_name" {
  type        = string
  description = "Name of storage account"
}

// CosmosDB

variable "cosmosdb_account_name" {
  type        = string
  description = "Name of CosmosDB Account Name"
}

// Synapse Analytics

variable "synapse-workspace-name" {
  type        = string
  description = "Name of Synapse Analytics Workspace"
}

// Log Analytics

variable "log_analytics_workspace_name" {
  type        = string
  description = "Name of Log Analytics Workspace" 
}