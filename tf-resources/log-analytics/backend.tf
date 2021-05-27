terraform {
    backend "azurerm" {
        resource_group_name = "Terraform-States" 
        storage_account_name = "customertfstates"
        container_name = "log-analytics-states"
    }
}