# Balanced Tree Clothing Co. SQL Analysis
SQL portfolio project based on **Case Study #7 from the 8 Week SQL Challenge**.
This project analyzes transactional sales data from **Balanced Tree Clothing Co.**, a fictional retail fashion company, to generate business insights using SQL.
The goal of this project is to demonstrate practical SQL skills including:
- relational data modeling
- multi-table joins
- aggregation and analytical queries
- hierarchical product analysis
- business reporting

## Project Overview
Balanced Tree Clothing Co. wants to better understand its sales performance, product performance, and transaction behavior.
Using multiple relational datasets, this project explores:
- overall sales metrics
- transaction patterns
- product and category performance
- segment level revenue contribution
- product penetration and bundling opportunities

## Dataset
This project uses **4 relational tables**.

### 1. sales
Contains transaction-level sales data.
- **prod_id**: product identifier
- **qty**: quantity purchased
- **price**: product price
- **discount**: discount percentage applied
- **member**: whether customer is a member
- **txn_id**: transaction identifier
- **start_txn_time**:	timestamp of transaction

### 2. product_details
Provides enriched product information including hierarchy mapping.
- **product_id**: product identifier
- **price**: base price
- **product_name**: name of the product
- **category_id**: category identifier
- **segment_id**: segment identifier
- **style_id**: style identifier
- **category_name**: category name
- **segment_name**: segment name
- **style_name**: style name

### 3. product_hierarchy
Defines the hierarchical structure of products.
- **id**: hierarchy identifier
- **parent_id**: parent hierarchy id
- **level_text**: hierarchy level
- **level_name**: hierarchy description

### 4. product_prices
Contains pricing information for products.
- **product_id**: product identifier
- **price**: product price

## Business Questions
This project answers several business questions using SQL.

### A. High Level Sales Analysis
1. What is the total quantity sold across all transactions?
2. What is the gross revenue before discount?
3. What is the total discount value given to customers?
4. What is the net revenue after discounts?

> Example calculation:
net_revenue = qty × price × (1 - discount)

### B. Transaction Analysis
5. How many unique transactions occurred?
6. What is the average number of products per transaction?
7. What is the average transaction value?
8. What percentage of transactions come from members vs non-members?
9. What is the average discount per transaction?

### C. Product Performance Analysis
> Using joins between sales and product_details.

10. Which products generate the highest revenue?
11. What are the top 3 products by revenue?
12. Which segments contribute the most revenue?
13. What is the revenue contribution by category?

### D. Hierarchical Product Analysis
> Using product_hierarchy and product_details.

14. Which category generates the highest sales revenue?
15. What are the top selling products within each segment?
16. What is the revenue share of each category?

This analysis demonstrates the use of hierarchical product structures.

### E. Product Penetration
> Product penetration measures how frequently a product appears in transactions.

17. What percentage of transactions include each product?
18. Which products appear most frequently in customer purchases?

### F. Product Bundling Analysis
> Identify products that are frequently purchased together.

19. What are the most common product combinations in a single transaction?
20. Which 3-product combinations occur most frequently?
21. This analysis helps identify cross-selling opportunities.

### G. Reporting Challenge
Create a reusable monthly sales report summarizing:
- total revenue
- total discount
- total quantity sold
- top selling products
- revenue by category
- revenue by segment

The goal is to build a single SQL reporting query that can generate reports for different months.

## Skills Demonstrated
This project demonstrates practical SQL skills used in real-world data analysis:
- relational data modeling
- multi-table joins
- aggregation and grouping
- analytical SQL
- hierarchical analysis
- transaction analysis
- business metric calculation

## Tools Used
- SQL (PostgreSQL / MySQL compatible)
- GitHub

## Source
[Case Study #7 from the 8 Week SQL Challenge by Danny Ma.](http://8weeksqlchallenge.com/case-study-7/)

## Author
**Aziz Dharmawan Apray**

SQL Portfolio Project
