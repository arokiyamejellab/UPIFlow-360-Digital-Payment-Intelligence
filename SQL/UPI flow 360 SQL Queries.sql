-- Import tables as csv files

CREATE DATABASE upiflow360;
USE upiflow360;

CREATE TABLE upi_transactions (
    transaction_id VARCHAR(30),
    transaction_date DATE,
    customer_id VARCHAR(30),
    customer_age INT,
    gender VARCHAR(20),
    city VARCHAR(100),
    state VARCHAR(100),
    merchant_category VARCHAR(100),
    merchant_name VARCHAR(100),
    payment_app VARCHAR(50),
    payment_method VARCHAR(50),
    transaction_amount DECIMAL(12,2),
    transaction_status VARCHAR(30),
    failure_reason VARCHAR(100),
    device_type VARCHAR(30),
    transaction_type VARCHAR(20),
    cashback_amount DECIMAL(12,2)
);

-- SQL QUERIES

SELECT COUNT(*) AS total_transactions
FROM upi_transactions;

SELECT
    SUM(transaction_amount) AS total_transaction_value
FROM upi_transactions;

SELECT
    payment_app,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS transaction_value,
    AVG(transaction_amount) AS avg_transaction
FROM upi_transactions
GROUP BY payment_app
ORDER BY transaction_value DESC;

SELECT
    transaction_status,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS transaction_value
FROM upi_transactions
GROUP BY transaction_status;

SELECT
    merchant_category,
    COUNT(*) AS transactions,
    SUM(transaction_amount) AS transaction_value
FROM upi_transactions
GROUP BY merchant_category
ORDER BY transaction_value DESC;

SELECT
    state,
    COUNT(*) AS transactions,
    SUM(transaction_amount) AS transaction_value,
    AVG(transaction_amount) AS avg_transaction
FROM upi_transactions
GROUP BY state
ORDER BY transaction_value DESC;

SELECT
    failure_reason,
    COUNT(*) AS failed_transactions
FROM upi_transactions
WHERE transaction_status = 'Failed'
GROUP BY failure_reason
ORDER BY failed_transactions DESC;

SELECT
    payment_method,
    COUNT(*) AS transactions,
    SUM(transaction_amount) AS transaction_value
FROM upi_transactions
GROUP BY payment_method
ORDER BY transaction_value DESC;

SELECT
    transaction_type,
    COUNT(*) AS transactions,
    SUM(transaction_amount) AS transaction_value
FROM upi_transactions
GROUP BY transaction_type;

SELECT
    device_type,
    COUNT(*) AS transactions,
    SUM(transaction_amount) AS transaction_value
FROM upi_transactions
GROUP BY device_type;

SELECT
    merchant_name,
    COUNT(*) AS transactions,
    SUM(transaction_amount) AS transaction_value
FROM upi_transactions
GROUP BY merchant_name
ORDER BY transaction_value DESC
LIMIT 10;

SELECT
    YEAR(transaction_date) AS year,
    MONTH(transaction_date) AS month,
    COUNT(*) AS transactions,
    SUM(transaction_amount) AS transaction_value
FROM upi_transactions
GROUP BY
    YEAR(transaction_date),
    MONTH(transaction_date)
ORDER BY
    year,
    month;