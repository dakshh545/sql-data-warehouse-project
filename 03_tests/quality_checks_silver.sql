-- Checking silver.crm_cust_info

-- Check for NULLs or Duplicates in Primary Key 

SELECT 
cst_id,
COUNT(*) 
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check for Unwanted Spaces

SELECT 
cst_key 
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key);

-- Checking silver.crm_prd_info

-- Check for NULLs or Duplicates in Primary Key

SELECT 
prd_id,
COUNT(*) 
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL;

-- Check for Unwanted Spaces

SELECT 
prd_nm 
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm);

-- Checking silver.crm_sales_details

-- Check for Invalid Date Orders

SELECT * 
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_ship_dt 
OR sls_order_dt > sls_due_dt;

-- Check for Invalid Dates

SELECT 
NULLIF(sls_due_dt, 0) AS sls_due_dt
FROM bronze.crm_sales_details
WHERE sls_due_dt <= 0
OR CHAR_LENGTH(sls_due_dt) != 8
OR sls_due_dt > 20500101
OR sls_due_dt < 19000101;

-- Checking silver.erp_cust_az12

-- Identify Out-of-Range Dates

SELECT DISTINCT 
bdate 
FROM silver.erp_cust_az12
WHERE bdate < '1924-01-01' 
OR bdate > CURDATE();


-- Checking silver.erp_loc_a101

-- Data Standardization & Consistency

SELECT DISTINCT 
cntry 
FROM silver.erp_loc_a101
ORDER BY cntry;

-- Checking silver.erp_px_cat_g1v2

-- Check for Unwanted Spaces

SELECT *
FROM silver.erp_px_cat_g1v2
WHERE cat != TRIM(cat) 
OR subcat != TRIM(subcat) 
OR maintenance != TRIM(maintenance);




