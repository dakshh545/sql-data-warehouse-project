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
- **Data Warehouse Architecture:**
-                ┌─────────────────────┐
                 │      CSV Files      │
                 │---------------------│
                 │ crm_cust_info.csv   │
                 │ crm_prd_info.csv    │
                 │ crm_sales_details   │
                 │ ERP datasets        │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │     BRONZE LAYER    │
                 │  (Raw Ingest Data)  │
                 │---------------------│
                 │ bronze.crm_cust_info│
                 │ bronze.crm_prd_info │
                 │ bronze.crm_sales    │
                 │ bronze.erp_tables   │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │     SILVER LAYER    │
                 │ (Cleaned & Joined)  │
                 │---------------------│
                 │ silver.customer_dim │
                 │ silver.product_dim  │
                 │ silver.sales_fact   │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │      GOLD LAYER     │
                 │ (Business Analytics)│
                 │---------------------│
                 │ revenue analysis    │
                 │ product performance │
                 │ customer insights   │
                 └─────────────────────┘



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



