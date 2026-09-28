# 🍕 Pizza Sales SQL Analysis
## 📌 Project Overview
This project is a **SQL-based Pizza Sales Analysis** designed to analyze transactional pizza-order data and extract meaningful business insights.
The project uses relational datasets containing information about **pizzas, pizza types, orders, and order details**. SQL queries are used to connect these datasets, calculate sales metrics, identify top-performing products, analyze customer ordering patterns, and understand revenue contribution across different pizza categories and sizes.
The primary goal is to demonstrate how SQL can be used to transform raw transactional data into **actionable business insights** that can support sales, marketing, inventory, and operational decisions.

---
## 🛠️ Tools & Technologies
* **MySQL**
* **SQL**
* Relational Database Management
* Data Aggregation
* Data Filtering
* SQL JOINs
* GROUP BY & ORDER BY
* Aggregate Functions
* Subqueries
* Date & Time Analysis

### SQL Concepts Used
```text
SELECT
WHERE
GROUP BY
ORDER BY
HAVING
COUNT()
SUM()
AVG()
MAX()
MIN()
DISTINCT
INNER JOIN
LEFT JOIN
Subqueries
Date & Time Functions
CASE Statements
```
---

## 📂 Datasets
The project consists of four relational datasets:
### 1. `pizza`
Contains information about individual pizzas.
* `pizza_id`
* `pizza_type_id`
* `size`
* `price`

### 2. `pizza_type`
Contains information about pizza types and categories.
* `pizza_type_id`
* `name`
* `category`
* `ingredients`

### 3. `orders`
Contains information about customer orders.
* `order_id`
* `date`
* `time`

### 4. `order_details`
Contains item-level information for each order.
* `order_details_id`
* `order_id`
* `pizza_id`
* `quantity`

### 🔗 Dataset Relationships
```text
pizza_type
     │
     │ pizza_type_id
     ▼
   pizza
     │
     │ pizza_id
     ▼
order_details
     │
     │ order_id
     ▼
  orders
```

These relationships allow the analysis to connect **orders → pizzas → pizza types → categories → prices → quantities**.
---

## 🔍 Analysis Performed
The analysis focuses on understanding the overall sales performance and product demand.

### 📊 Sales Analysis
* Calculated the total number of orders.
* Calculated the total quantity of pizzas sold.
* Calculated total revenue generated.
* Analyzed average order-related metrics.
* Examined sales performance across different periods.

### 🍕 Product Analysis
* Identified the most frequently ordered pizzas.
* Identified top pizzas based on revenue.
* Analyzed low-performing pizza products.
* Compared pizza sizes based on quantity sold.
* Analyzed individual pizza performance.

### 📦 Category Analysis
* Compared sales across pizza categories.
* Identified categories with higher demand.
* Analyzed revenue contribution by category.

  🔗 SQL JOIN Analysis

Multiple tables were joined to combine product, pricing, quantity, and order information.

This allowed calculations such as:
Revenue = Quantity × Pizza Price
and enabled product-level and category-level analysis.

##💡 Key Insights
The analysis provides insights into:
Overall sales performance through total orders, quantity sold, and revenue.
Customer preferences by identifying the most popular pizza sizes and products.
Top-performing products based on quantity sold and revenue generated.
Category performance by comparing demand and revenue across pizza categories.
Sales patterns by examining order dates and times.
Revenue contribution from individual pizzas and categories.
Lower-performing products that may require further business evaluation.

These insights can help a pizza business understand what customers are buying, which products contribute most to revenue, and when demand is highest.

## 📈 Visualizations

Although the core of this project is SQL-based, the analysis can be presented through visualizations to make business insights easier to understand.
Potential visualizations include:
📊 Total Revenue
📊 Total Pizzas Sold
📊 Total Orders
🍕 Top 5 Best-Selling Pizzas
💰 Top 5 Pizzas by Revenue
📊 Revenue by Pizza Category
📊 Quantity Sold by Pizza Category
📈 Monthly Revenue Trend
🕐 Orders by Hour
🍕 Pizza Size Distribution

These visualizations can be created using tools such as Excel, Power BI, or Python as an extension of the SQL analysis.

## 📁 Project Structure
Pizza-Sales-SQL-Analysis/
│
├── Data/
│   ├── pizza.csv
│   ├── pizza_type.csv
│   ├── orders.csv
│   └── order_details.csv
│
├── Pizza_Sales_Analysis.sql
│
├── Pizza Sales Project.docx
│
└── README.md


## Conclusion

This project demonstrates how SQL can be used to analyze real-world transactional data and convert it into meaningful business information.By connecting the orders, order_details, pizza, and pizza_type tables, the analysis provides a complete view of pizza sales performance. SQL aggregation, filtering, grouping, ranking, and JOIN operations were used to identify important patterns in orders, quantities, revenue, pizza sizes, products, and categories.
The analysis helps answer important business questions such as which pizzas are most popular, which products generate higher revenue, which categories have stronger demand, and how ordering patterns change over time.From a business perspective, these insights can support inventory planning, product strategy, promotional decisions, revenue analysis, and operational planning.
Overall, this project demonstrates both technical SQL skills and the ability to interpret data from a business perspective, making it a practical addition to a Data Analyst portfolio.

