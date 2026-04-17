# 📊 SQL Analytics Portfolio – 120+ Production-Level Queries

## 🚀 Overview

This repository is a **comprehensive SQL portfolio project** designed for **Data Analyst (DA2–DA3 level)** professionals.

It demonstrates:

* Strong SQL fundamentals
* Advanced analytical problem-solving
* Real-world business use cases
* Clean, production-level query writing

The project simulates an **E-commerce + FinTech data ecosystem** and covers **120+ SQL queries** across multiple domains.

---

## 🏢 Business Context

The dataset represents a hybrid platform involving:

* 👤 Customers
* 🛒 Orders
* 📦 Products
* 🧾 Order Items (bridge table)
* 💳 Payments
* 🔁 Transactions

This structure mimics real-world systems used in:

* E-commerce platforms
* Payment gateways
* Fintech analytics systems

---

## 🗂️ Repository Structure

```
/sql-100-queries
│
├── schema.sql          # Table creation scripts
├── data.sql            # Sample data inserts
│
├── queries/
│   ├── 01_basic.sql                # Basic SQL (1–20)
│   ├── 02_joins.sql                # Joins & relationships (21–40)
│   ├── 03_aggregations.sql         # Aggregations (41–60)
│   ├── 04_window_functions.sql     # Window functions (61–80)
│   ├── 05_advanced.sql             # Advanced SQL (81–110)
│   ├── 06_case_studies.sql         # Business problems (111–150)
│
└── README.md
```

---

## 🧱 Data Model

The project uses a **normalized relational schema**:

* `customers` → user information
* `orders` → order-level data
* `order_items` → connects orders to products (**critical for joins**)
* `products` → product catalog
* `payments` → payment status & methods
* `transactions` → financial activity

### ⭐ Key Design Feature

A **bridge table (`order_items`)** is used to:

* Enable many-to-many relationships
* Support realistic product-level analytics
* Allow complex joins across tables

---

## 📊 SQL Coverage

### 🔹 1. Basic SQL

* Filtering, sorting, limiting
* CASE statements
* DISTINCT, LIKE, BETWEEN

### 🔹 2. Joins

* INNER, LEFT, RIGHT, FULL
* CROSS JOIN, SELF JOIN
* Join condition optimization (interview traps)

### 🔹 3. Aggregations

* SUM, AVG, COUNT, MIN, MAX
* GROUP BY + HAVING
* Revenue & frequency analysis

### 🔹 4. Window Functions

* ROW_NUMBER, RANK, DENSE_RANK
* LAG, LEAD
* Running totals & moving averages
* Percentiles & distributions

### 🔹 5. Advanced SQL

* Subqueries (correlated & non-correlated)
* CTEs (WITH clause)
* EXISTS / NOT EXISTS
* Set operations (UNION, INTERSECT, EXCEPT)

### 🔹 6. Case Studies

* Customer Lifetime Value (CLV)
* Retention analysis
* Funnel conversion
* Payment failure rate
* Cross-sell & basket analysis
* Revenue contribution
* Data quality & sanity checks

---

## 🎯 Key Business Use Cases

This repository answers real-world analytical questions such as:

* Who are the **top revenue-generating customers**?
* What is the **payment failure rate**?
* Which products are **frequently bought together**?
* What is the **customer retention trend**?
* How does **transaction data compare with order data**?
* Are there **data inconsistencies or missing records**?

---

## 🧠 Skills Demonstrated

* Advanced SQL querying
* Data modeling & normalization
* Analytical thinking
* Business problem solving
* Data validation & quality checks
* Performance-aware query writing

---

## 🛠️ How to Use

1. Run `schema.sql` to create tables
2. Run `data.sql` to insert sample data
3. Execute queries file-wise:

   * Start with `01_basic.sql`
   * Progress towards `06_case_studies.sql`

---

## ⚠️ Important Notes

* Queries are written in a **PostgreSQL-compatible syntax**
* Some features like:

  * `FILTER`
  * `PERCENTILE_CONT`
    may require PostgreSQL or equivalent support

---

## 🔥 What Makes This Portfolio Strong

✔ Covers **end-to-end SQL journey**
✔ Includes **real-world business problems**
✔ Uses **proper relational modeling**
✔ Demonstrates **analytical depth (not just syntax)**
✔ Includes **data quality & validation queries**

---

## 🚀 Future Enhancements

* Add **large-scale dataset (10K+ rows)**
* Integrate with **Python (Pandas / ETL pipeline)**
* Build **Power BI / Tableau dashboards**
* Add **query performance tuning (indexes, EXPLAIN plans)**
* Convert into **data warehouse project (Snowflake/BigQuery)**

---

## 👨‍💻 Author

**Raj Aryan Banka**
Data Analyst | SQL | Python | Analytics Engineering

---

## ⭐ Final Thought

This repository is not just about SQL queries —
it demonstrates how to **think like a Data Analyst**,
solve **business problems**, and build **production-ready data logic**.

---
