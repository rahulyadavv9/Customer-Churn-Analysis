# Customer Churn Analysis

## Project Overview
Customer churn is a major challenge for businesses because losing customers directly impacts revenue and growth.

This project analyzes **bank customer churn using SQL and Power BI** to identify patterns in customer attrition and understand factors affecting customer retention.
The project follows a complete **data analytics workflow** including data validation, cleaning, transformation, analysis, and dashboard development.
The final result is an **interactive Power BI dashboard** that helps understand churn patterns and customer behavior.

---

## Business Problem
Banks need to understand:

- Why customers leave the bank
- Which customer segments are more likely to churn
- Differences between active and inactive customers
- How customer attributes affect churn

Without proper analytics, designing effective **customer retention strategies** becomes difficult.

---

## Dataset
The dataset contains **10,000 bank customer records** with multiple related tables:

- CustomerInfo
- Bank_Departure
- ActiveCustomer
- ExitCustomer
- CreditCard
- Gender
- Geography

Key attributes include:

- Customer demographics
- Credit score
- Geography
- Customer activity status
- Credit card ownership
- Estimated salary
- Customer exit status

---

## Data Validation & Unit Testing
Before analysis, SQL queries were used to validate the dataset.

Steps included:

- Detecting duplicates using **ROW_NUMBER() and CTEs**
- Identifying missing values
- Validating relational keys across tables
- Checking logical inconsistencies between **IsActiveMember and Exited**
- Correcting incorrect records

This step ensured **data accuracy before dashboard development**.

---

## Data Cleaning & Transformation
Data preparation was performed using **SQL Server**.

Tasks included:

- Duplicate detection
- Missing value checks
- Data consistency validation
- Preparing analytical tables for reporting

---

## Data Modeling
A **Star Schema model** was used to organize the data.

Fact Table:
- Bank_Departure

Dimension Tables:
- CustomerInfo
- Geography
- Gender
- CreditCard
- ActiveCustomer
- ExitCustomer

This improved **query performance and reporting efficiency**.

---

## Dashboard Features

### Key KPIs
- Total Customers
- Active Customers
- Inactive Customers
- Credit Card Holders
- Non Credit Card Holders
- Exit Customers
- Retained Customers

### Visual Insights
The dashboard analyzes:

- Monthly churn trends
- Previous vs current month exit customers
- Customer distribution by gender
- Credit card ownership impact on churn
- Active vs inactive customers over time

---

## Technologies Used

- SQL Server
- Power BI
- Power Query
- DAX
- Data Modeling (Star Schema)

---

## Dashboard Preview

[![Customer Churn Dashboard](Screenshots/churn_dashboard_overview.png)](https://github.com/rahulyadavv9/Customer-Churn-Analysis/blob/main/Screenshots/Customer%20Churn%20analysis.png)

---

## Project Structure

```
Customer-Churn-Analysis
│
├── Dataset
├── SQL
├── Dashboard
├── Screenshots
└── README.md
```

Rahul Yadav  
Aspiring Data Analyst | Power BI Developer
