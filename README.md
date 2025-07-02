# 💸 Budget Tracker – SQL Portfolio Project

A personal finance tracker built with **pure SQL and SQLite**, designed as a portfolio project to learn and showcase fundamental data engineering skills such as relational modeling, SQL analysis, CTEs, and window functions.

---

## 📘 Project Overview

This project simulates a simple but powerful finance tracking system. It allows users to log income and expense transactions, categorize them, and analyze spending patterns over time. The entire logic and analysis are written in **pure SQL**, using SQLite for lightweight portability.

---

## 🧱 Schema Summary

- **`categories`**: Stores transaction categories. Supports nested hierarchy (e.g. Food → Groceries).
- **`accounts`**: Represents user-owned wallets or bank accounts.
- **`transactions`**: Stores all financial transactions with amount, date, type (`income`/`expense`), account, and category.

All foreign keys are enforced, and data types are normalized.

---

## 🧠 SQL Features Demonstrated

- Aggregation with `SUM`, `GROUP BY`
- Time grouping via `strftime('%Y-%m', date)`
- Conditional aggregation using `CASE`
- Window function for running balance
- Recursive CTE for hierarchical category grouping
- Ranking and limiting with `ORDER BY ... LIMIT`

---

## 📂 File Descriptions

- `schema.sql`  
  Defines all tables and relationships.

- `dummy_data.sql`  
  Inserts example accounts, categories, and transactions.

- `monthly_expense.sql`  
  → Calculates total expenses per month.  
  Useful for analyzing spending trend over time.

- `income_vs_expense.sql`  
  → Compares income and expense per month.  
  Useful to understand savings surplus or deficit each period.

- `running_balance.sql`  
  → Shows a cumulative balance after each transaction date.  
  Useful for visualizing how cashflow impacts the account over time.

- `expense_by_category.sql`  
  → Breaks down total expense grouped by category, including nested ones (e.g. Food → Groceries).  
  Useful to identify where most of the money goes.

- `top_spending_days.sql`  
  → Lists 5 dates with highest spending.  
  Useful to spot anomalies or big purchases.

---

## 🛠️ How to Run (Using DB Browser for SQLite)

1. Download and install **DB Browser for SQLite** → https://sqlitebrowser.org/dl/
2. Open the app → `New Database` → name it e.g. `budget-tracker.db`
3. Open `schema.sql` → paste into `Execute SQL` tab → click **Execute All**
4. Do the same for `data.sql`
5. Open and run any of the queries (e.g. `monthly_expense.sql`)
6. Use `Browse Data` tab to explore the tables manually

No extra setup, no dependencies.

---

## 📦 Tech Stack

- **SQLite 3** – lightweight embedded relational database
- **Pure SQL** – no ORM, no backend, no frontend
- **Runs entirely locally** – portable and beginner-friendly

---