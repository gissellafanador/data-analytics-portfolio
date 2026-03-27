# Customer Churn Analysis (BigQuery SQL)

Analyzed customer churn data using SQL in BigQuery to identify key drivers of churn and uncover actionable business insights.

---

## Tools
- BigQuery (SQL)
- Data Aggregation & Analysis

---

## Analysis Performed
- Calculated overall churn rate
- Analyzed churn by contract type
- Evaluated churn by tech support availability
- Segmented churn by customer tenure

---

## Key Insights
- Month-to-month customers had the highest churn (~42%), indicating low commitment increases churn risk
- Customers without tech support had significantly higher churn (~41%) compared to those with support (~15%)
- New customers (0–12 months) showed the highest churn (~47%), suggesting early-stage retention is critical
- Long-term customers (49+ months) had the lowest churn (~9%), highlighting strong retention over time

---

## Visualization

![Churn by Contract Type](images/contract_churn.png)

---

## Project Files
- `churn_analysis.sql` → SQL queries used for analysis
- `images/` → Visualizations from analysis

---

## Summary
This project demonstrates how SQL can be used to extract insights from customer data, identify churn patterns, and support data-driven retention strategies.
