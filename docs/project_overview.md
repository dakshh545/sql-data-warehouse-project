# Project Overview

This project implements a SQL Data Warehouse using MySQL.

The goal is to ingest raw CRM and ERP datasets, transform them, and create analytical tables for business insights.

The architecture follows the Medallion model:
- Bronze Layer: Raw data ingestion
- Silver Layer: Cleaned and standardized data
- Gold Layer: Analytical tables for reporting

The final Gold layer contains fact and dimension tables used for analysis.
