# Data Model

## Bronze Layer

Raw datasets loaded directly from CSV files.

Tables:
- crm_cust_info
- crm_prd_info
- crm_sales_details
- erp_cust_az12
- erp_loc_a101
- erp_px_cat_g1v2

## Silver Layer

Cleaned and standardized data derived from Bronze tables.

Tables:
- crm_cust_info
- crm_prd_info
- crm_sales_details
- erp_cust_az12
- erp_loc_a101
- erp_px_cat_g1v2

## Gold Layer

Business-ready tables used for reporting.

Views:
- dim_customers
- dim_products
- fact_sales
- report_customers
