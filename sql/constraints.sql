-- ============================================================
-- Business Rules & Constraints
-- Project: Global Superstore Data Analysis
-- Purpose: Enforce key business rules at the database level
-- ============================================================


-- Business rule:
-- Each product should appear only once per order.
-- This constraint prevents duplicate product entries
-- within the same order.

ALTER TABLE order_items
ADD CONSTRAINT unique_order_product
UNIQUE (OrderID, ProductID);

