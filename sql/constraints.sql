-- Constraints
-- This file documents business rules enforced at database level
-- Dataset: Global Superstore

-- Business rule:
-- Each product should appear only once per order
ALTER TABLE order_items
Add a unique constraint to ensure each product appears only once per order
UNIQUE (OrderID, ProductID);
