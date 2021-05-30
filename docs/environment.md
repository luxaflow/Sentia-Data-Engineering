# Data Engineering

## Requirements
#### Core
  - Public Cloud Solution
  - Resources: Infrastructure as Code (IaC)
  - Code: Python, R, C# or Explain different solution
  - Maintain Rationale

#### Client Expectations
  - ETL Process with Analysis
    - Structured & Unstructured Data (MongoDB & SQL)
  - Some unstructured data needs to needs to be normalized to structured data
  - Analysis & Visualization Tools (PowerBI has been mentioned)
  - Logging for network Activity
  - Costs
  - Enterprise Big Data Achitecture (Scalabilty)
  - Infrastructure & ETL Pipelines Deployments CI/CD

#### Additional requirements
  - Additional Data Sources later in time.
  - Preference for PaaS Solutions
  - Machine Learning to read from source
  - ExpressRoute or VPN

#### Additional deliverables
  - Code should be delivered in CI/CD Pipelines
  - Dont forget documentation (Manuals & Instructions)
  - Keep track of time invested
  
### Azure
Azure offers a full PaaS solution for the custormers requirements. 
- Azure VPN Gateway or ExpressRoute for a direct and secure connection to the Azure Public Cloud Platform
- Azure Log Analytics for storing on premise and public cloud log which can then in turn be queried for meaningfull information and actionable items.
- Azure Data Factory is a scalable solution for the ETL process
- Azure Data Lake, SQL Server and CosmosDB offer all required and scalable storage options
- Azure Synapse Analytics will allow for analysing all storage sources and will scale to as expected for a Big Data solution
- PowerBI will allow for the visalization of data in meaningfull ways to build reports on.

#### Network
- Requirement for ExpressRoute
If the customer data is currently reciding in a Datacenter which already has the option for a ExpressRoute I would advise using this option.

- Azure VPN Gate way ass fallback
If ExpressRoute is not available at the customers current on premise location I would advise setting up a Azure VPN Gateway and setup Site to Site VPN.

- Logging 
All network traffic will be logged, on premise and in Azure with Azure Log Analytics.

#### ETL
-  Ingestion
Azure Data Factory will be used for data ingestion. Azure Data Factory has a easy and effecive way of configuring the ingestion process of the ETL Process with the already available connectors to connect to the required data sources.

- Transform
Azure Data Factory actions allow for quick configuration of required transformation steps. If required Azure Data Factory allows for Machine Learning integration and implementing custom actions for code like Python, Java or C#.

- Load
The same connectors used for Ingestion can be used for Loading the data into it's required location after the transformation process has been completed. 

#### Analytics
- Data Factory integration
Azure Synapse Analytics is a broad platform in which Azure Data Factory has been integrated. 

- Analyzzation
Azure Synapse Analytics allows for querying multiple sources and extracting meaningfull information. 

- PowerBi integration
The platform also integrates directory with PowerBI for data vizualization.

#### Monitoring
Azure Monitor will run queries on network and ETL logs form Azure Log Analytics. This will allow for creating alerts, when incidents occur and allow for addeqate respose times to any incident which occurs.

#### Integratoin
Azure Logic Apps will allow for quick and easy integration with SMT API's when any Azure Monitor alerts are trigge
### Logging
#### Azure Log Analytics
Azure log analytics is a scalable log analyzing solution which allows for network logging On Premise (with use of agents) and within the cloud. Queries can be build on top of the solution which offer insights and alerts on network logging. On top of this it also offers logging for other Azure services.


## ETL
### Azure Data Factory
Azure Data Factory is an ETL PaaS Solution on the Azure Platform which is flexible and scalable. Data Factory is a easy to use and integrate solution which will cover the customers ETL requirements. Data Factory is a very scalable solution. Azure Data factory offers build in Machine learning capabilities for the ETL process.


## Storage
### Strucured and unstrucured data
Several options are available within azure for storage. Data can be stored in several types of storage. Azure will support NoSQL, SQL and unstructured data solution. 


## Analystics
### Azure Synapse Analytics
Azure Synapse analytics is versatile PaaS solution which allows for quering all data sourcesa specified by the customer. It is scalable to the extend of building big data analytics solutions and has a directi integration into PowerBi. It will allow for querying any type of data previously mentioned. Azure Synapse Analytics also makes machine learning solutions available to the analaytics part of the data

## Visualization
### PowerBi
PowerBi is a microsoft data analytics vizualiztion tool which will show meaning full outputs of data made accessable by Azure synapse analytics.

## Other Tools
### Azure monitor
This will be used for informing on network related events and alerting on broken data which can in turned be handled in a SMT of some sort.

### Logic Apps
Logic Apps will integrate Azure monitor to the required sources. Such as informing engineers on occuring issues by creating and maintaining incidents in their SMT. It will also be possible to notify engineer by use of a webhook to a loction like a slock or teams channel.


## NOTES

- Be more specific about why a solution meets customer requirements.