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

variables "etl_rg" {
  type = string
  description = "Name of resouce group for Azure Data Factory and its resources"
}

// Data Factory Variables

variable "data_factory_name" {
  type        = string
  description = "Name of the Azure Data Factory Workspace"
}