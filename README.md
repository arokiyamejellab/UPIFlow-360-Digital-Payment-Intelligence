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
UPIFlow 360 Cleaned Dataset

**Dataset Source:**  
UPIFlow 360 Raw Dataset

**Database Name:**  
upiflow360

**Table Names:**  
UPI_Tansactions

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

**Dataset name:** UPIFlow 360 Cleaned Dataset  
**Source:** UPIFlow 360 Raw dataset  
**Format:** CSV  
**Rows:** 5,000 transaction records

**Important Features:**

* Transaction\_ID
* Transaction\_Date
* Transaction\_Amount
* Transaction\_Status
* Payment\_App
* Merchant\_Category
* Transaction\_Type
* Device\_Type
* State
* Payment\_Method
* Failure\_Reason (where available)

## Project Workflow

**Industry Selection → Problem Identification → Dataset Collection → MySQL Database Setup → Data Cleaning \& Transformation Using SQL → SQL Data Analysis → Power BI Data Modeling → Dashboard Development → Insights \& Recommendations**

## SQL Analysis

SQL was used for database creation, data preparation, validation, aggregation, and analysis.

### SQL Concepts Used

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT`
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
* Date-wise transaction analysis

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
    DISTINCTCOUNT(UPITransactions\[Transaction\_ID]),
    0
)

Successful Transactions =
COALESCE(
    CALCULATE(
        DISTINCTCOUNT(UPITransactions\[Transaction\_ID]),
        UPITransactions\[Transaction\_Status] = "Success"
    ),
    0
)

Failed Transactions =
COALESCE(
    CALCULATE(
        DISTINCTCOUNT(UPITransactions\[Transaction\_ID]),
        UPITransactions\[Transaction\_Status] = "Failed"
    ),
    0
)

Pending Transactions =
COALESCE(
    CALCULATE(
        DISTINCTCOUNT(UPITransactions\[Transaction\_ID]),
        UPITransactions\[Transaction\_Status] = "Pending"
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
AVERAGE(UPITransactions\[Transaction\_Amount])
```

> Confirm the exact table and column names in the final Power BI model before publishing.

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

Do not add estimated or invented values.

Recommended format:

* The payment application with the highest transaction volume is **\[actual result]**.
* The merchant category with the highest transaction activity/value is **\[actual result]**.
* The most common transaction type is **\[actual result]**.
* The overall Success Rate is **\[actual result]**.
* The overall Failure Rate is **\[actual result]**.
* The most common failure reason is **\[actual result]**.
* The payment method/device/category with the highest relevant failure rate is **\[actual result]**.
* The highest transaction activity period is **\[actual result]**.

> Replace every `\[actual result]` placeholder with values from your final SQL/Power BI analysis before publishing.

## Power BI Dashboard Screenshots

Upload actual screenshots exported from the final Power BI dashboard into the `Visualizations/` folder.

```markdown
## Power BI Dashboard Screenshots

## Power BI Dashboard Screenshots

### 01 Executive Overview

![Executive Overview](<img width="978" height="549" alt="01_Executive_Overview" src="https://github.com/user-attachments/assets/59534845-5007-4fb8-8d14-ce6369372224" />
)

### 02 App \& Merchant Insights

![App & Merchant Insights](<img width="978" height="548" alt="02_App_Merchant_Insights" src="https://github.com/user-attachments/assets/bbb754fd-d05e-4f0c-856b-287792606364" />
)

### 03 Reliability \& Operations

![Reliability & Operations](<img width="977" height="550" alt="03_Reliability_Operations" src="https://github.com/user-attachments/assets/5ef9bb12-f96d-48c4-96ff-648ea4da7a9e" />
)```

## Project Folder Structure

Use this structure only for files that actually exist:

```text
UPIFlow 360-Digital Payment Intelligence
│
├── README.md
│
├── SQL/
│   └── UPI flow 360 SQL Queries.sql
│
├── Dataset/
│   ├── UPIFlow 360 Raw Dataset.csv
│   └── UPIFlow 360 Cleaned Dataset.csv
│
├── PowerBI/
│   └── UPIFlow 360 – Digital Payment Intelligence Dashboard.pbix
│
├── Screenshots/
│   ├── Executive Overview.png
│   ├── App & Merchant Insights.png
│   └── Reliability & Operations.png
│
└── Documentation/
    ├── Project_Report.pdf
    └── Data_Dictionary.xlsx

### 01 Executive Overview

![Executive Overview](<img width="978" height="549" alt="01_Executive_Overview" src="https://github.com/user-attachments/assets/59534845-5007-4fb8-8d14-ce6369372224" />
)

### 02 App \& Merchant Insights

![App & Merchant Insights](<img width="978" height="548" alt="02_App_Merchant_Insights" src="https://github.com/user-attachments/assets/bbb754fd-d05e-4f0c-856b-287792606364" />
)

### 03 Reliability \& Operations

![Reliability & Operations](<img width="977" height="550" alt="03_Reliability_Operations" src="https://github.com/user-attachments/assets/5ef9bb12-f96d-48c4-96ff-648ea4da7a9e" />
)```

## Project Folder Structure

Use this structure only for files that actually exist:

```text
UPIFlow 360-Digital Payment Intelligence
│
├── README.md
│
├── SQL/
│   └── UPI flow 360 SQL Queries.sql
│
├── Dataset/
│   ├── UPIFlow 360 Raw Dataset.csv
│   └── UPIFlow 360 Cleaned Dataset.csv
│
├── PowerBI/
│   └── UPIFlow 360 – Digital Payment Intelligence Dashboard.pbix
│
├── Screenshots/
│   ├── Executive Overview.png
│   ├── App & Merchant Insights.png
│   └── Reliability & Operations.png
│
└── Documentation/
    ├── Project_Report.pdf
    └── Data_Dictionary.xlsx
```



## Author

* **Name:** Arokiya Mejella B.
* **Student ID:** AF05331719
* **Organization:** Anudip Foundation
* **Course:** DBA_AI
* **Batch Code:** ANP-D7635

