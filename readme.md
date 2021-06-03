# Data Engineering
This document describes the reasoning behind my design choices and technical step required to deploy the IaC (terraform) I have written.

## Assignment
I was offered the option between assignments for two different positions, Public Cloud Enigneer & Data Engineer. Due to my background and personal preference leaning more towards data and software engineering, I have chosen the Data Engineering Assignment. As my background is more focused on software development there are some concepts that are new to me and require some research from my part.

## Key Meeting Points
1. Data
  - Structured data from MS-SQL Server & MongoDB
  - Unstructred data, source unknown?
  - More data sources later
2. ETL
  - Preference for PaaS Solution
  - Some unstructured data needs to be normalized
3. Required Tools
  - Analysis Tool
  - Visualization Tool (PowerBI)
  - Machine Learing reading data
4. Architecture
  - Keep costs in control
  - Enterprise Big Data (Scalability)
5. Networking
  - ExpressRoute or VPN (Security)
  - Network activity logging
6. Additional
  - CI/CD tool for ETL & Infrastructure
  - GIT Repos

## My Interpertation
The customer wants to make decisions from their data. There is no exact specification what type of business decisions, nor the exact amount of data. This points to the requirement for a solid foundation to develop current and new ideas on. The solution will need to proces data from multiple sources and source types and scale to an enterprise level. The customer expressed a clear preference for PaaS solutions.
Their is a requirement for a secure network connection to the Public Cloud which points to (some) data reciding on premise. All network activity needs to be logged, but there is no requirement for creating alerts based of this logging.
Change to the ETL pipelines and infrastructure should be done through a CI/CD pipeline.

## Public Cloud Choice
I have chosen Azure as the public cloud to deliver this solution on. Azure offers all PaaS services which are found in the customers requirements. Also I have the most experience in Azure Services and IaC (Terraform & ARM).

## Azure Services Choice
1. Data Storage
  - Azure SQL Server
  - Azure CosmosDB
  - Azure Data Lake Gen2
  - Azure Storage Account
2. ETL
  - Azure Data Factory
3. Analysis
  - Azure Synapse Analytics
4. Visualization
  - PowerBI
5. Networking
  - Azure VPN Gateway
6. Logging
  - Azure Log Analytics
7. Additional Tools 
  - Azure DevOps (CI/CD)
  - Azure Monitor (Alerts)
  - Azure Key Vault (Security)
  - Optional: Azure Logic Apps (Integration)

## Design
![Flow Diagram](designs/Sentia_Data_Engineering.jpg)

### Network
Due to no specification of the current on premise location I have made the assumption the current data center does not have options for Azure ExpressRoute. 
I have chosen to setup a site to site (S2S) VPN using a Azure VPN Gateway for security purposes.  This will offer the level of security for the customers data. This will require some on premise network configuration. This might require a network engineer if there is limited access to on premise network configuration.

### ETL
For the ETL process a Azure Data Factory will be implemented. Azure Data Factory is a PaaS platform which offers several out of the box connectors and actions. This will limit the requirment to develop a lot of code, but if required Azure Data Factory allows for custom code or use of other Azure services. Azure Data Factory allows for storing pipelines in a GIT repository. Azure Data Factory will also scale to the customers enterprise (Big Data Requirement).

### Storage
Due to the unclear requirement of data storage, apart from the big data requirement, i have allowed for several options to be chosen from. My preference would go to a Azure SQL Datawarehouse. Although modeling this into facts and dimensions is beyond my personal knowledge, this would require a more experienced Data Engineer.
I have left the option for other storage options open such as Azure Data Lake Storage Gen2 and Azure CosomosDB (NoSQL)

### Analysis
Azure Synapse Analytics is a diverse analysis PaaS solution which can query data from different sources. Azure Synapse Analytics can scale to execute enterpise big data queries and retain performance. If analytical queries need to be designed to make meaningfull business decisions, a Data Analyst might be requrired. Azure Synapse Analytics also integrates with PowerBI for seamless visualization design. 
Azure Synapse Analytics also offers Machine Learning integration as specified by the customer. For the development and use of Machine Learning models an AI enigeer and/or Data Scientist might be required.

### Visualization
PowerBI Service will allow for building reports and dashboards from the data offered by Azure Synapse Analytics. These reports can show data in a meaningfull way to make BI decisions from.

### Logging
Azure Log Analytics allows for storing metrics from multiple Azure services. These metrics can the be queried to create Alerts based on the customer requirement. This could alert engineers of a failed ETL pipeline or unwanted network activity. These Alerts can be create in Azure Monitor and if prefered could be send to a slack channel, teams channel and create a Serive Management Incident in an Service Management tool (through Azure Integration Services).

## Additional Expertise
- Network engineers (On premise)
- Addtional Data Engineer with Datawarehouse Modeling Experience.
- Data Analyst (Analysis & Visualization)
- AI Engineer and/or Data Scientist

## Getting Started
1. Setup A Azure DevOps Organization and Project to store code (GIT)
2. For (initial) infrastructure deployment read the terraform [readme.md](tf-resources/readme.md)
3. Create ETL Pipeline to noramalize data in sample.xslx (normalization)[normalization.md]
