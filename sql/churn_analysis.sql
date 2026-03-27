-- =========================================
-- Customer Churn Analysis (BigQuery SQL)
-- =========================================

-- 1. Total rows
SELECT COUNT(*) AS total_rows
FROM `customer-churn-analysis-490903.customer_analytics.customer_churn`;

-- 2. Check schema
SELECT column_name, data_type
FROM `customer-churn-analysis-490903.customer_analytics.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'customer_churn';

-- 3. Overall churn rate
SELECT
  COUNT(*) AS total_customers,
  COUNTIF(churn = TRUE) AS churned_customers,
  ROUND(100 * COUNTIF(churn = TRUE) / COUNT(*), 2) AS churn_rate_pct
FROM `customer-churn-analysis-490903.customer_analytics.customer_churn`;

-- 4. Churn by contract type
SELECT
  contract,
  COUNT(*) AS total_customers,
  COUNTIF(churn = TRUE) AS churned_customers,
  ROUND(100 * COUNTIF(churn = TRUE) / COUNT(*), 2) AS churn_rate_pct
FROM `customer-churn-analysis-490903.customer_analytics.customer_churn`
GROUP BY contract
ORDER BY churn_rate_pct DESC;

-- 5. Churn by tech support
SELECT
  TechSupport,
  COUNT(*) AS total_customers,
  COUNTIF(churn = TRUE) AS churned_customers,
  ROUND(100 * COUNTIF(churn = TRUE) / COUNT(*), 2) AS churn_rate_pct
FROM `customer-churn-analysis-490903.customer_analytics.customer_churn`
GROUP BY TechSupport
ORDER BY churn_rate_pct DESC;

-- 6. Churn by tenure group
SELECT
  CASE
    WHEN tenure <= 12 THEN '0-12 months'
    WHEN tenure <= 24 THEN '13-24 months'
    WHEN tenure <= 48 THEN '25-48 months'
    ELSE '49+ months'
  END AS tenure_group,
  COUNT(*) AS total_customers,
  COUNTIF(churn = TRUE) AS churned_customers,
  ROUND(100 * COUNTIF(churn = TRUE) / COUNT(*), 2) AS churn_rate_pct
FROM `customer-churn-analysis-490903.customer_analytics.customer_churn`
GROUP BY tenure_group
ORDER BY churn_rate_pct DESC;
