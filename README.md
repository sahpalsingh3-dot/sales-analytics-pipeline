# Sales Analytics Pipeline (SQL → Excel → Power BI)

## Dashboard Preview

![Dashboard](screenshots/dashboard.png)

## Overview
This project demonstrates an end-to-end data analytics pipeline using SQL, Excel, and Power BI.

## Project Structure

- sql/ → SQL scripts for database setup and analysis
- data/ → cleaned Excel dataset
- powerbi/ → Power BI dashboard file
- screenshots/ → dashboard preview image

## Tools Used
- SQLite
- Microsoft Excel
- Power BI

## Project Workflow

### 1. SQL
- Created relational tables (customers, orders, products, order_items)
- Performed joins and aggregations
- Calculated key KPIs:
  - Total Revenue
  - Total Orders
  - Average Order Value
  - Revenue by Region and Category

### 2. Excel
- Cleaned and validated exported data
- Checked for duplicates and inconsistencies
- Verified totals using pivot tables

### 3. Power BI
- Built interactive dashboard
- Created DAX measures
- Visualised trends and breakdowns

## Key Insights
- Technology category drives the majority of revenue (~65%)
- North region generates the highest sales
- Revenue peaks in February

## Files
- sql/database_setup.sql → table creation and inserts
- sql/analysis_queries.sql → SQL queries and KPIs
- data/sales_clean.xlsx → cleaned dataset
- powerbi/sales_dashboard.pbix → Power BI dashboard
- screenshots/dashboard.png → dashboard preview
