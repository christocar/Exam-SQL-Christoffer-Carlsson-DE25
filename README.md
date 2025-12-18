# Sakila Dashboard – SQL Analytics with DuckDB, Evidence, and Jupyter

## Project Overview

This project analyzes the **Sakila DVD Rental Database** using two complementary workflows:

- A **Jupyter notebook workflow** (`sakila_eda.ipynb`) for exploratory data analysis (EDA), where SQL queries are executed directly in notebook cells and results are displayed immediately.
- An **Evidence dashboard workflow**, where reusable SQL queries are stored in `sources/` and visualized in `pages/`.

The project demonstrates structured SQL analysis, reproducibility, and clear presentation of insights.

---

## Objectives

- Load and analyze Sakila data using DuckDB
- Explore data interactively in a Jupyter notebook with immediate query results
- Build a reproducible Evidence dashboard using reusable SQL queries
- Separate data logic (SQL) from presentation (dashboard layout)
- Maintain a clear and reviewable project structure

---

## Technologies Used

| Tool | Purpose |
|-----|--------|
| DuckDB | Analytical database engine |
| Jupyter Notebook (`.ipynb`) | Interactive exploratory data analysis |
| Evidence | SQL-based dashboard framework |
| SQL | Querying and transformations |
| Python | Notebook environment (DuckDB, Pandas, Matplotlib) |
| Node.js | Runtime environment for Evidence |
| Markdown | Documentation and dashboard layout |

---

## Dataset

The project uses the **Sakila sample database**, representing a DVD rental store.

Core entities include:

- Films
- Actors
- Categories
- Customers
- Rentals
- Payments
- Inventory

The data is stored in a DuckDB database file and queried both from Python and Evidence.

---

## Project Structure

| Path | Description |
|-----|------------|
| `duckdb` | DuckDB database file containing Sakila data |
| `data/` | Source data files (e.g. SQLite Sakila database, if used for ingestion) |
| `sakila_eda.ipynb` | Jupyter notebook for exploratory data analysis |
| `sources/` | Reusable SQL queries for Evidence |
| `sources/sakila/` | Sakila-specific SQL analyses |
| `pages/` | Evidence dashboard pages written in Markdown |
| `pages/index.md` | Landing page |
| `pages/sakila_dashboard.md` | Main analytical dashboard |
| `README.md` | Project documentation |

---

## Workflow 1: Jupyter Notebook (EDA)

The notebook **`sakila_eda.ipynb`** is used for exploratory data analysis.

### What happens in the notebook

- A DuckDB connection is created inside notebook cells (using a `with` statement to ensure proper cleanup).
- SQL queries are written as Python multiline strings.
- Queries are executed using DuckDB and returned as Pandas DataFrames.
- Results are displayed immediately in the notebook output.
- Selected results are visualized using Matplotlib.

### Purpose of the notebook

- Rapid iteration and testing of SQL queries
- Immediate feedback on query correctness and results
- Validation of assumptions before formalizing queries into reusable SQL files
- Support for analytical reasoning through visible intermediate outputs

---

## Workflow 2: Evidence Dashboard

Evidence is used to present selected analyses as a structured dashboard.

### How Evidence is used

- Each analysis is defined as a `.sql` file in `sources/sakila/`
- These queries are referenced in dashboard pages using:
  ```sql
  from sakila.query_name;


### LLM usage
##### LLMs were used to generate README.md and Index.md which I thought were beside the point of the assignment. I prompted it to include important details from the project and to be easily understood. It has also been used when I got stuck for too long with some Evidence connection issues. Barely helped though. Had better luck with the video guides supplied with the course material.