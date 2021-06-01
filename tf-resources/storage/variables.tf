variable "environment" {
  type    = string
  default = "dev"

  validation {
    condition = var.environment == "dev" || var.environment == "test" || var.environment == "uat" || var.environment == "prod" 
    error_message = "allowed values are dev, test, uat or prod for the environment."
  }
}

variable "storage_rg_name" {
  type    = string
  default = "customer-storage-rg"
}

variable "data_lake_store_name" {
  type  = string
  default = "customer-data-lake-store"
}

variable "sql_server_name" {
  type    = string
  default = "customer-sql-server"
}

variable "storage_account_name" {
  type    = string
  default = "customer-storage-account"
}

variable "sql_database_name" {
  type    = string
  default = "customer-sql-database"
}

variable "cosmosdb_account_name" {
  type    = string
  default = "customer-cosmosdb"
}

variable "cosmosdb_failover_location" {
  type    = string
  default = "North Europe
}