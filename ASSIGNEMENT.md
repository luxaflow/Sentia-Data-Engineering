# Sentia Recruitment
Welcome to Sentia Recruitment
The purpose of this repository is to provide an assignment that will highlight the strengths required by a cloud data engineer in our public cloud consultancy workforce. This assessment can be done in any capacity from Junior to Senior levels.
## Table of content
- [General Information](#general-information)
- [Assignment](#assignment)
    - [Part 1 - Get there data!](#part-1---Get-there-data!)
    - [Part 2 - Deploy your resources](#part-2---Deploy-your-resources)
- [Deliverables](#deliverables)
- [Links](#links)
- [License](#license)
## General Information
This assignment is meant to challenge you in the complete spectrum of designing a solution and delivering an environment in the public cloud using Infrastructure as Code (IaC) for resources, Code (C#, Python, ?) for ETL and Analysis processes - if you don't work like this, show us how you do work; and tell us why you work in the way you do.
We are looking for a workable solution to our customers problem. Deliver what you are capable of delivering. There is a theory part of the assessment too, this is of equal importance as the practical; however we work in the real world and you should provide a practical example of your work.

## Assignment
### Part 1 - Get there data!
You have participated in a meeting with a client to assess their strategy to migrate to the public cloud. During there journey to the cloud, they want to get some immediate benefits and introduce an ETL process with analysis.

The minutes of the meeting are as follows:

1) They have both structured and unstructured data in an on premise network. Microsoft SQL Server and MongoDB. They plan on introducing more sources later.
2) They require data to be extracted, transformed and loaded into a cloud by using cloud platform services. They always have a preference for PaaS.
3) Some of the data they have in the non-structured source needs to be normalized into a structured data model for further analysis
4) They want a data analysis tool, and some visualization tools, someone mentioned PowerBi someone also said they wanted to use Machine Learning to read this data from a source
5) We need to have logging for all activity on the network.
6) Costs are important for this customer (as usual), however the architecture should be aimed at enterprise and "Big data" was a term used.
7) They have a loose requirement for Direct Connectivity - Azure ExpressRoute or AWS Direct Connect or GCP Interconnect, OR you can use a vpn. This is the first topic that was discussed in the meeting because they don't want there data exposed in any way; security is important.

### Part 2 - Deploy your resources
The customer mentioned that there is a need to run deployments of Infrastructure and ETL pipelines via CI/CD. As well as executing them should be done in a pipeline.
The customer has asked for a Proof of Concept (see point 2 below in deliverables), however the pipeline should be independent of the delivery.

## Deliverables
Please provide the following:
What they now expect us to do as deliverables:
1) A design of the ETL, Analysis Process including Visualization tools you could make to support a proof of concept assuming the customer network and data sources. This needs to be presented (point 6).
2) Deliver a Proof Of Concept using assumptions for your ingestion process.
2.1) This can be in the cloud of your choice
2.2) Bonus: Show us Infrastructure as Code for the items in your proof of concept
2.3) Show us code for anything you do for ETL and Analysis.
2.4) The company provided a "sample.xlsx" file found in this repository. This can be imported into the same data repo as they have (Sql or Mongo: please show how you did this if you do.) or just left as a flat file as a source.
2.5) Data that cannot be processed should be repaired best as you can, data not repaired should be demonstrated somehow.
3) Document your assumptions used along the way
4) All files and code should be delivered in a GIT repository. The GIT Repo should have some execution instructions.
5) Keep careful track of the time you used; try use your git timeline as a point of reference for best results - small concise useful commits are appreciated.
6) We will need a presentation of the results: architecture, design drawings, data process and analysis decisions.
7) Bonus: Please provide a CI/CD pipeline that you will use to deliver the changes to the environment, every time the client updates requirements in GIT.

## Links for example searches
- [The Twelve Factors](https://12factor.net/)
- [GitHub For Beginners: Don’t Get Scared, Get Started](https://readwrite.com/2013/09/30/understanding-github-a-journey-for-beginners-part-1/)
- [Draw.io](https://www.draw.io/)
- [AWS CloudFormation Documentation](https://docs.aws.amazon.com/cloudformation/index.html)
- [Resource Manager on Azure documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/)
- [AWS Cloud Development Kit (AWS CDK)](https://github.com/aws/aws-cdk)
- [Amazon EC2 Auto Scaling](https://aws.amazon.com/ec2/autoscaling/?sc_channel=ba&sc_campaign=autoscaling-ec2-button&sc_medium=button&sc_country=global&sc_geo=global&sc_outcome=aware)
- [Microsoft Azure Virtual Machine Scale Sets](https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/overview?toc=%2Fazure%2Fvirtual-machines%2Flinux%2Ftoc.json)
- [AWS Well-Architected](https://aws.amazon.com/architecture/well-architected/)
- [Microsoft Azure Cloud Design Patterns](https://docs.microsoft.com/en-us/azure/architecture/patterns/)
- [IBM Big Data](https://www.ibm.com/nl-en/it-infrastructure/solutions/big-data)
- [GCP Big Data](https://cloud.google.com/what-is-big-data)
- [Containers](https://www.docker.com/resources/what-container)
- [Microsoft Azure cloud Analytics solutions](https://docs.microsoft.com/en-us/azure/architecture/solution-ideas/articles/advanced-analytics-on-big-data)
- [AWS big data](https://aws.amazon.com/big-data/datalakes-and-analytics/)https://www.ibm.com/nl-en/analytics/machine-learning
- [IBM Machine Learning](https://www.ibm.com/nl-en/analytics/machine-learning)

## License
Copyright © 2021, [Sentia](https://sentia.com). All rights reserved.