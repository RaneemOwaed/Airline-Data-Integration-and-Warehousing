# Airline Data Integration & Warehousing Pipeline

## 📌 Project Overview
This project demonstrates an end-to-end data engineering pipeline designed to integrate heterogeneous airline datasets (structured passenger ratings and semi-structured reviews) into a unified Data Warehouse. By establishing a robust ETL process, this architecture enables advanced OLAP analytics to evaluate passenger satisfaction and prioritize operational improvements.

---

## 🏗️ Data Pipeline Architecture & Phases

### 📂 Phase 1: Data Profiling & Quality Assessment (Labs 1 & 3)
- **Ingestion:** Loaded multi-source airline datasets (Passenger Satisfaction, Quality Ratings, and Customer Reviews) totaling over 170,000+ records.
- **Profiling:** Conducted structural audits to isolate invalid columns, null values (found 10% nulls in Flight Routes and 60% in Aircraft), and illegal naming conventions (e.g., `#` instead of `Review_ID`).

### 🧹 Phase 2: Unstructured Data Transformation & Cleaning (Labs 2 & 3)
- **Text Preprocessing:** Engineered an NLP text cleaning function to handle free-text user reviews by normalizing whitespaces, eliminating special characters, and converting text to lowercase.
- **Cleaning Strategy:** Standardized flight route formats, renamed illegal headers to ensure SQL syntax compliance, and handled missing parameters via format standardization.

### 🔍 Phase 3: Schema Matching & Mapping (Labs 4 & 5)
- **Schema Matching:** Evaluated semantic and structural relationships between datasets, mapping linguistic variances (e.g., matching `Seat Comfort` directly, and partial matching `Overall Rating` with `Satisfaction`).
- **Schema Mapping:** Generated explicit 1:1 schema mapping rules and translated them into robust SQL/ETL transformation queries.

### 🗄️ Phase 4: Data Warehouse & Dimensional Modeling (Lab 6)
- **Dimensional Modeling:** Designed and implemented a unified **Star Schema** to optimize query performance, isolating numerical metrics into a Fact Table (`FACT_Satisfaction`) connected via Foreign Keys to 4 Dimension Tables (`DIM_Passenger`, `DIM_Flight`, `DIM_Airline`, `DIM_Traveller`).
- **Implementation:** Wrote and executed clean SQL scripts to construct the database schema and enforce data integrity via primary and foreign key constraints.

### 📊 Phase 5: Strategic Business Intelligence & OLAP (Lab 7)
- Executed operational and business intelligence queries using advanced SQL aggregations (`GROUP BY`, `AVG`, `COUNT`).
- Generated analytical data marts and visualized key findings (e.g., proving that high flight delays directly degrade satisfaction, and identifying **Ground Service** as the lowest-rated operational priority with a 1.75/5 score).

---

## 🛠️ Tech Stack & Tools
- **Language:** Python, SQL
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn
- **Database Environment:** MySQL Workbench / MySQL Data Warehouse
