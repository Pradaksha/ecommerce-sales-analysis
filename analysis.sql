-- Total records
SELECT COUNT(*) FROM Sales;

-- Total revenue (KPI)
SELECT SUM(Quantity * UnitPrice) AS total_sales
FROM Sales;

-- Monthly revenue
SELECT 
    strftime('%Y-%m', InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS revenue
FROM Sales
GROUP BY month
ORDER BY month;

-- Top 5 customers
SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS revenue
FROM Sales
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 5;

-- Revenue by country
SELECT 
    Country,
    SUM(Quantity * UnitPrice) AS revenue
FROM Sales
GROUP BY Country
ORDER BY revenue DESC;
