# Before Deploying (Important)

This Terraform setup requires a shared state file in Azure, Key Vault & Serivce Principal. 

The following steps need to be done manually within the Azure portal.
1. Create a Resource Group called "Terraform-States"
2. Create a Storage Account in the Resource Group called "customertfstates"
3. Create a container to the Storage Account called "environmentstates"
4. Create a Managed Identity for Terraform deployments
5. Create a Service Principal for Synapse Analytics
6. Create a Key Vault in the same Resource Group
7. Add the following Secrets to the Keyvault
  - SQL Server admin username
  - SQL Server admin password
  - Synapse Analytics username
  - Synapse Analytice Object Id
8. Add the following details to your pipeline (or backend-config for dev environment)
  - key (state file name)
  - use_msi (set as true)
  - subscription_id
  - tenant_id