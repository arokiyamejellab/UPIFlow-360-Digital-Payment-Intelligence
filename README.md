# UPIFlow 360 – Digital Payment Intelligence

## Project Information

**Project Title:**  
UPIFlow 360 – Digital Payment Intelligence

**Industry Name:**  
Digital Payments / FinTech

**Problem Statement:**  
Digital payment platforms generate large volumes of transaction data across payment applications, transaction types, merchant categories, locations, devices, and transaction statuses. This project analyzes transaction data to understand payment performance, transaction activity, application performance, merchant/category behavior, and transaction reliability.

**Project Objectives:**

* Analyze overall digital payment transaction activity.
* Monitor transaction volume and transaction value.
* Measure successful, failed, and pending transactions.
* Calculate Success Rate, Failure Rate, and Pending Rate using DAX.
* Compare payment applications based on transaction activity and reliability.
* Analyze merchant categories and transaction types.
* Identify major failure reasons and operational reliability patterns.
* Build an interactive Power BI dashboard.
* Use MySQL and SQL for structured data storage and analysis.

**Proposed Solution / Business Questions:**  
The proposed solution combines MySQL/SQL analysis with Power BI to transform raw UPI transaction data into an interactive digital payment intelligence dashboard.

Key questions:

* How many transactions are processed?
* What is the total transaction value?
* What are the Success Rate, Failure Rate, and Pending Transactions?
* Which payment applications have higher transaction activity?
* Which merchant categories contribute more transaction activity/value?
* What transaction types are most common?
* What are the major failure reasons?
* Which payment apps and operational categories show higher failure rates?
* How does transaction activity change over time?

**Dataset Name:**  
UPI_Transactions Cleaned Dataset

**Dataset Source:**  
Raw Dataset from ChatGPT

**Database Name:**  
upiflow360

**Table Name:**  
UPI_Transactions

## Tools \& Technologies

* MySQL / SQL
* Power BI Desktop
* Power Query
* DAX
* CSV

## Project Overview

UPIFlow 360 is a digital payment analytics project designed to analyze transaction-level data from a UPI/digital payment environment.

The project starts with a raw CSV dataset and uses MySQL for structured storage and SQL-based analysis. Power Query is used in Power BI for data cleaning and transformation, followed by data modeling and DAX-based KPI creation.

The Power BI dashboard provides an interactive view of transaction performance, payment application activity, merchant/category behavior, transaction status, and reliability-related metrics.

The project demonstrates practical skills in SQL, data preparation, Power BI, DAX, dashboard development, and business-oriented data storytelling without claiming unverified business outcomes.

## Project Objectives

* Analyze transaction volume and transaction value.
* Track successful, failed, and pending transactions.
* Calculate Success Rate, Failure Rate, and Pending Rate.
* Compare payment applications and transaction categories.
* Analyze merchant category and transaction type performance.
* Identify failure reasons and reliability patterns.
* Create interactive KPI cards and visualizations.
* Provide data-driven insights using SQL and Power BI.

## Dataset Information

**Dataset name:** UPI_Transactions Cleaned Dataset
**Source:** Raw Dataset from ChatGPT
**Format:** CSV  
**Rows:** 5,000 transaction records

**Important Features:**

* Transaction\_ID
* Transaction\_Date
* Customer_Id
* City
* State
* Merchant\_Category
* Merchant_Name
* Payment\_App
* Payment\_Method City 
* Transaction\_Amount
* Transaction\_Status 
* Failure\_Reason
* Device\_Type
* Transaction\_Type
* Sum of Cashback_Amount

## Project Workflow

**Industry Selection → Problem Identification → Dataset Collection → MySQL Database Setup → Data Cleaning \& Transformation Using SQL → SQL Data Analysis → Power BI Data Modeling → Dashboard Development → Insights \& Recommendations**

## SQL Analysis

SQL was used for database creation, data preparation, validation, aggregation, and analysis.

### SQL Concepts Used

* `CREATE DATABASE`
* `CREATE TABLE`
* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `COUNT`
* `SUM`
* `AVG`
* `DISTINCT`
* Conditional filtering
* Date-based analysis
* Status-based analysis
* Category-wise analysis

### Analysis Areas

* Total transaction count
* Total transaction value
* Successful transaction count
* Failed transaction count
* Pending transaction count
* Average transaction amount
* Transaction status distribution
* Payment application analysis
* Merchant category analysis
* Transaction type analysis
* Failure reason analysis

## Power BI Dashboard

The project includes a Power BI dashboard titled **UPIFlow 360 – Digital Payment Intelligence**.

### 01 Executive Overview

High-level view of digital payment performance.

* Total Transactions
* Total Transaction Value
* Unique Customers
* Average Transaction
* Success Rate
* Failure Rate
* Transaction trend
* Transaction status analysis
* Payment application analysis
* Merchant category analysis
* State-level analysis
* Interactive slicers

### 02 App \& Merchant Insights

Focuses on payment application and merchant/category behavior.

* Payment App Transaction Volume
* Payment App Success Rate
* Merchant Category Performance
* Transaction Type Analysis
* Merchant Category vs Average Transaction
* Supporting KPI measures and interactive filters

### 03 Reliability \& Operations

Focuses on transaction reliability and operational performance.

**KPIs:**

* Successful Transactions
* Failed Transactions
* Pending Transactions
* Success Rate
* Failure Rate
* Pending Rate

**Visual analysis:**

* Failure Reason Analysis
* Failure Rate by Payment App
* Failure Rate by Payment Method
* Transaction Value by Day
* Status by Transaction Type
* Failure Rate by Device Type

### Power Query

Power Query was used for data preparation and transformation before dashboard development.

### DAX

DAX measures were used to create KPI and analytical metrics such as:

* Total Transactions
* Successful Transactions
* Failed Transactions
* Pending Transactions
* Success Rate
* Failure Rate
* Pending Rate
* Average Transaction
* Total Transaction Value
* Unique Customers

Example measures:

```DAX
Total Transactions =
COALESCE(
    DISTINCTCOUNT(UPI_Transactions\[Transaction\_ID]),
    0
)

Successful Transactions =
COALESCE(
    CALCULATE(
        DISTINCTCOUNT(UPI_Transactions\[Transaction\_ID]),
        UPIT_ransactions\[Transaction\_Status] = "Success"
    ),
    0
)

Failed Transactions =
COALESCE(
    CALCULATE(
        DISTINCTCOUNT(UPI_Transactions\[Transaction\_ID]),
        UPI_Transactions\[Transaction\_Status] = "Failed"
    ),
    0
)

Pending Transactions =
COALESCE(
    CALCULATE(
        DISTINCTCOUNT(UPI_Transactions\[Transaction\_ID]),
        UPI_Transactions\[Transaction\_Status] = "Pending"
    ),
    0
)

Success Rate =
DIVIDE(
    \[Successful Transactions],
    \[Total Transactions],
    0
)

Failure Rate =
DIVIDE(
    \[Failed Transactions],
    \[Total Transactions],
    0
)

Pending Rate =
DIVIDE(
    \[Pending Transactions],
    \[Total Transactions],
    0
)

Average Transaction =
AVERAGE(UPI_Transactions\[Transaction\_Amount])
```

## Data Analysis \& Visualization

The project performs:

* **Trend Analysis** – Transaction activity over time.
* **Category-wise Analysis** – Payment apps and merchant categories.
* **Performance Analysis** – Success, failure, and pending performance.
* **Comparison Analysis** – Apps, categories, transaction types, and payment methods.
* **Time-based Analysis** – Date/day-based transaction activity.
* **Distribution Analysis** – Transaction status and transaction type distribution.
* **KPI Analysis** – Key transaction performance indicators.

## Key Insights

The final insights should be based on actual SQL results and Power BI dashboard results.

Recommended format:

* The payment application with the highest transaction volume is **Amazon Pay (1,022 transactions).**.
* The merchant category with the highest transaction activity/value is **(1,022 transactions)**.
* The most common transaction type is **P2M (3,658 transactions, 73.16%)**.
* The overall Success Rate is **71.48% (3,574 successful transactions)**.
* The overall Failure Rate is **14.08% (704 failed transactions)**.
* The most common failure reason is **Bank Server Error (127 failed transactions)**.
* The payment method/device/category with the highest relevant failure rate is **UPI for payment method (15.21%), Android for device (14.61%), and Travel for merchant category (16.55%).**.
* The highest transaction activity period is **March 2026 (614 transactions)**.

## Power BI Dashboard Screenshots

### 01 Executive Overview

<img width="978" height="549" alt="01_Executive_Overview" src="https://github.com/user-attachments/assets/afe15f9d-331c-48e0-9ef3-76622e22b817" />


### 02 App \& Merchant Insights

<img width="978" height="548" alt="02_App_Merchant_Insights" src="https://github.com/user-attachments/assets/432c34fd-6d70-409a-8d12-0b681d39b6b2" />


### 03 Reliability \& Operations

<img width="977" height="550" alt="03_Reliability_Operations" src="https://github.com/user-attachments/assets/899d68a6-0910-4fcf-ab82-8e6670e621c2" />


## Project Folder Structure

Use this structure only for files that actually exist:

```text
UPIFlow-360-Digital-Payment-Intelligence/
│
├── README.md
│
├── Dataset/
│   ├── UPI_Transactions Raw Dataset
│   └── UPI_Transactions Cleaned Dataset
│
├── SQL/
│   └── UPI flow 360 SQL Queries
│
├── PowerBI/
│   └── UPIFlow 360 – Digital Payment Intelligence  Dashboard
│
├── Screenshot/
│   ├── 01 Executive Overview.png
│   ├── 02 App Merchant Insights.png
│   └── 03 Reliability Operations.png
│
└── Documentation/
    ├── Project_Report.pdf
    └── Data_Dictionary.xlsx
```

## Author

* **Name:** Arokiya Mejella B
* **Student ID:** AF05331719
* **Organization:** Anudip Foundation
* **Course:** DBA_AI
* **Batch Code:** ANP-D7635

