# Footwear Sales Analysis (SQL Project)

## 📌 Project Overview
This project analyzes a footwear sales dataset using SQL to uncover **business insights** such as:
- Top brands by revenue
- Country demand by units sold
- Sales channel performance
- Average price per shoe type
- Monthly revenue trends
- High-value transactions
- Best-selling shoe type per channel

The goal is to demonstrate how SQL can transform raw transactional data into **actionable business intelligence**.

---

## 📂 Dataset
File: `shoes_sales_dataset.csv`  
Columns include:
- `Sale_ID` – Unique transaction ID  
- `Date` – Sale date  
- `Brand` – Shoe brand  
- `Shoe_Type` – Category (Running, Boots, Casual, Formal, Sneakers, Sports)  
- `Color` – Shoe color  
- `Country` – Country of sale  
- `Sales_Channel` – Online, Mall, Retail Store  
- `Price_USD` – Unit price  
- `Units_Sold` – Quantity sold  
- `Revenue_USD` – Total revenue  

---

## 🛠️ SQL Queries Implemented
- **Data Validation**: Missing values, revenue math integrity  
- **Revenue by Brand**: Identify top revenue-generating brands  
- **Units by Country**: Map global demand volume  
- **Channel Performance**: Compare Online vs Mall vs Retail Store  
- **Pricing Dynamics**: Average price per shoe type  
- **Monthly Trends**: Revenue seasonality  
- **Top 3 Brands per Country**: Window function with `RANK()`  
- **High-Value Transactions**: Above-average revenue filter  
- **Best-Selling Shoe Type per Channel**: Using `ROW_NUMBER()` for uniqueness  

---

## 📊 Insights
- **Adidas & Reebok** dominate revenue in multiple regions.  
- **Sneakers & Running shoes** are consistent best-sellers.  
- **Mall sales** often generate higher average revenue compared to online channels.  
- Seasonal spikes in **Nov–Dec 2025** highlight festive demand.  

---

## 🚀 How to Run
1. Import `shoes_sales_dataset.csv` into your SQL environment (MySQL/Postgres).  
2. Run queries from `queries.sql`.  
3. Explore insights and adapt queries for deeper analysis.  

---

## 👨‍💻 Author
**Yogesh Kumar**  
Final-year BA Student | Aspiring Data Analyst | SQL & BI Projects  
- LinkedIn: [linkedin.com/in/yogeshkumar-data-analyst](https://www.linkedin.com)  
- GitHub: [github.com/yogeshkumar70628](https://github.com/yogeshkumar70628)  
