# Data-Quality-Cleanup
> 🌐 Project Overview
* This project serves as a practical guide to Develop T-SQL scripts to rectify issues.
* It will Identify common data quality issues.
* Document the cleaning process in a clear and reproducible manner.
* The goal is to transform the raw AdventureWorks22 data into a cleaner, more reliable, and analysis-ready state. All scripts are developed and executed using SQL Server Management Studio (SSMS21).


> 🎯 Project Objectives
* Identify inconsistencies within key tables such as Person.Person, Production.Product, and Sales.Customer.
* Standardize data formats for phone numbers, names, and categorical data.
* Handle NULL values by replacing them with meaningful defaults where appropriate.
* Remove extraneous whitespace from string data to ensure consistency.
* Detect and flag duplicate records to prevent skewed analysis.
* Create a documented and repeatable SQL workflow for data cleaning.


## 🧹 Data Quality Issues & Cleaning Process
> The following sections detail the identified issues and the T-SQL scripts used to resolve them. It's recommended to run the identification queries first to see the "before" state.

**1. Handling NULL Values**
> Issue: The Color column in the Production.Product table has NULL values for many products. For reporting purposes, it's better to have a default value like 'Unspecified'.

**2. Trimming Whitespace**
> Issue: Some text fields, like FirstName and LastName in Person.Person, may contain leading or trailing whitespaces, causing issues in string comparisons and joins.

**3. Standardizing Data Formats**
> Issue: Phone numbers in Person.PersonPhone are stored in various formats. Standardizing them to a consistent XXX-XXX-XXXX format improves readability and application compatibility.

**4. Correcting Inconsistent Data**
> Issue: The Gender column in Sales.Customer (via Person.Person) uses 'M' for Male and 'F' for Female. Let's assume a new business requirement is to use the full words 'Male' and 'Female' for a new reporting tool

**5. Identifying Duplicate Records**
> Issue: Duplicate email addresses can lead to sending multiple marketing emails to the same person. We need to identify them. We will identify them here, but not delete them, to preserve the integrity of the sample database.


.
## 🔮 Future Improvements
* Create Stored Procedures: Encapsulate the cleaning logic into stored procedures for easy, repeatable execution.
* Automate with SSIS: Develop an SQL Server Integration Services (SSIS) package to automate this cleaning process as part of an ETL pipeline.
* Data Quality Dashboard: Use Power BI or another BI tool to create a dashboard that monitors data quality metrics over time.
* Advanced Anomaly Detection: Implement more advanced T-SQL functions or Python scripts to detect statistical anomalies in numerical data.


















