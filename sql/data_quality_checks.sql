-- Data Quality & Inspection Checks
-- Dataset: Global Super Store

-- 1. Row count check
SELECT COUNT(*) AS total_rows
FROM orders;

-- 2. Check for duplicate OrderID + ProductID combinations
SELECT OrderID, ProductID, COUNT(*) AS duplicate_count
FROM order_items
GROUP BY OrderID, ProductID
HAVING COUNT(*) > 1;

-- 3. Check for NULL values in key fields
SELECT
  SUM(CASE WHEN OrderID IS NULL THEN 1 ELSE 0 END) AS null_order_id,
  SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS null_customer_id
FROM orders;

-- 4. Validate foreign key relationships (orphan records)
SELECT oi.OrderID
FROM order_items oi
LEFT JOIN orders o ON oi.OrderID = o.OrderID
WHERE o.OrderID IS NULL;

-- 5. Date consistency check (ShipDate after OrderDate)
SELECT *
FROM orders
WHERE ShipDate < OrderDate;

