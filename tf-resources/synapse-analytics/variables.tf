variable "environment" {
  type    = string
  default = "dev"
}

variable "synapse_analytics_rg" {
  type    = string
  default = "customer-synapse-analytics-rg"
}

variable "synapse_storage_account_name" {
  type    = string
  default = "customer-synapse-storage-account"
}

variable "data_lake_gen2_fs_name" {
  type    = string
  default = "data_lake_gen2_fs_name"
}

variable "keyvault_rg_name" {
  type    = string
  default = "customer-keyvault-rg-name"
}

variable "keyvault_name" {
  type    = string
  default = "customer-keyvault-name"
}

variable "keyvault_sql_server_username" {
  type    = string 
  default = "customer-username-secret"
}

variable "keyvault_sql_server_password" {
  type    = string
  default = "customer-password-secret"
}

variable "keyvault_aad_object_id" {
  type = string
  default = "customer-aad-object-id-secret"
}

variable "keyvault_aad_username" {
  type    = string
  default = "customer-aad-username"
}

variable "synapse-workspace-name" {
  type    = string
  default = "customer-synapse-workspace-name"
}
