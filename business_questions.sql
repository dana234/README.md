-- Global Superstore - Business Questions (SQL)
-- These queries were used to answer key business questions about:
-- profitability, customer segmentation, logistics, and sales trends.

-- 1) Which product categories generate the most profit?
SELECT
  p.Category,
  SUM(oi.Sales)  AS total_sales,
  SUM(oi.Profit) AS total_profit
FROM order_items oi
JOIN products p ON oi.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY total_profit DESC;


-- 2) Which customer segment is the most profitable?
SELECT
  c.Segment,
  SUM(oi.Sales)  AS total_sales,
  SUM(oi.Profit) AS total_profit
FROM order_items oi
JOIN orders o    ON oi.OrderID = o.OrderID
JOIN customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Segment
ORDER BY total_profit DESC;


-- 3) Which countries have the highest sales?
SELECT
  l.Country,
  SUM(oi.Sales)  AS total_sales,
  SUM(oi.Profit) AS total_profit
FROM order_items oi
JOIN orders o    ON oi.OrderID = o.OrderID
JOIN locations l ON o.PostalCode = l.PostalCode
GROUP BY l.Country
ORDER BY total_sales DESC
LIMIT 20;


-- 4) What is the average shipping cost by ship mode?
SELECT
  o.ShipMode,
  AVG(oi.ShippingCost) AS avg_shipping_cost
FROM order_items oi
JOIN orders o ON oi.OrderID = o.OrderID
GROUP BY o.ShipMode
ORDER BY avg_shipping_cost DESC;


-- 5) What is the sales trend over time (by year)?
SELECT
  YEAR(o.OrderDate) AS order_year,
  SUM(oi.Sales)     AS total_sales,
  SUM(oi.Profit)    AS total_profit
FROM order_items oi
JOIN orders o ON oi.OrderID = o.OrderID
WHERE o.OrderDate IS NOT NULL
GROUP BY YEAR(o.OrderDate)
ORDER BY order_year;


-- 6) What is the average lead time between Order Date and Ship Date?
SELECT
  ROUND(AVG(DATEDIFF(o.ShipDate, o.OrderDate)), 2) AS avg_lead_time_days
FROM orders o
WHERE o.OrderDate IS NOT NULL
  AND o.ShipDate IS NOT NULL;


-- 7) How do discounts affect profit (simple view)?
SELECT
  ROUND(oi.Discount, 2) AS discount_level,
  SUM(oi.Sales)         AS total_sales,
  SUM(oi.Profit)        AS total_profit
FROM order_items oi
GROUP BY ROUND(oi.Discount, 2)
ORDER BY discount_level;


-- 8) Which sub-categories have the highest shipping cost?
SELECT
  p.SubCategory,
  SUM(oi.ShippingCost) AS total_shipping_cost,
  AVG(oi.ShippingCost) AS avg_shipping_cost
FROM order_items oi
JOIN products p ON oi.ProductID = p.ProductID
GROUP BY p.SubCategory
ORDER BY total_shipping_cost DESC
LIMIT 10;
