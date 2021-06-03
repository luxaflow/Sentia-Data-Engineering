// Main Variables

variable "env" {
  type    = string
  default = "dev"
}

variable "main_location" {
  type    = string
  default = "westeurope"
}

// Data Factory Variables

variable "data_factory_name" {
  type        = string
  description = "Name of the Azure Data Factory Workspace"
}