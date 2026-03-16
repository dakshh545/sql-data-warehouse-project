# sql-data-warehouse-project
Building a modern data warehouse with SQL server, including ETL processes , data modelling and analytics
---

## 🚀 Project Requirements

### 🏗️ Building the Data Warehouse (Data Engineering)

#### Objective
Develop a modern data warehouse using **SQL Server** to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources:** Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality:** Cleanse and resolve data quality issues prior to analysis.
- **Integration:** Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope:** Focus on the latest dataset only; historization of data is not required.
- **Documentation:** Provide clear documentation of the data model to support both business stakeholders and analytics teams.
- **Data Warehouse Architecture:** This project implements a **Medallion Data Warehouse Architecture** with three layers:

• **Bronze Layer** – Raw data ingestion from CSV source files  
• **Silver Layer** – Cleaned and standardized data  
• **Gold Layer** – Business-ready analytical models (fact and dimension tables)


```
┌──────────────────────────────────────────────┐
│                 SOURCE FILES                 │
├──────────────────────────────────────────────┤
│ cust_info.csv                                │
│ prd_info.csv                                 │
│ sales_details.csv                            │
│ CUST_AZ12.csv                                │
│ LOC_A101.csv                                 │
│ PX_CAT_G1V2.csv                              │
└───────────────────────────┬──────────────────┘
                            │
                            ▼
┌──────────────────────────────────────────────┐
│                 BRONZE LAYER                 │
│             (Raw Data Ingestion)             │
├──────────────────────────────────────────────┤
│ bronze.crm_cust_info                         │
│ bronze.crm_prd_info                          │
│ bronze.crm_sales_details                     │
│ bronze.erp_cust_az12                         │
│ bronze.erp_loc_a101                          │
│ bronze.erp_px_cat_g1v2                       │
└───────────────────────────┬──────────────────┘
                            │
                            ▼
┌──────────────────────────────────────────────┐
│                 SILVER LAYER                 │
│         (Cleaned & Standardized Data)        │
├──────────────────────────────────────────────┤
│ silver.crm_cust_info                         │
│ silver.crm_prd_info                          │
│ silver.crm_sales_details                     │
│ silver.erp_cust_az12                         │
│ silver.erp_loc_a101                          │
│ silver.erp_px_cat_g1v2                       │
└───────────────────────────┬──────────────────┘
                            │
                            ▼
┌──────────────────────────────────────────────┐
│                  GOLD LAYER                  │
│           (Business Analytics Layer)         │
├──────────────────────────────────────────────┤
│ dim_customers                                │
│ dim_products                                 │
│ fact_sales                                   │
│ report_customers                             │
└──────────────────────────────────────────────┘
```



---

### 📊 BI: Analytics & Reporting (Data Analytics)

#### Objective
Develop SQL-based analytics to deliver detailed insights into:

- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

------

## 📄 License

This project is licensed under the **MIT License**.

You are free to:
- Use
- Modify
- Distribute
- Copy

---

## 👤 About Me

Hi 👋  
My name is **Daksh**, and I am a **Computer Science student at PEC**.

I am passionate about:
- Data engineering
- SQL and database systems
- Data warehousing and analytics
- Building real-world, scalable data solutions

This project is part of my learning journey to strengthen my understanding of data warehouse design, ETL processes, and analytical reporting.

---



