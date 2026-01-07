-- Constraints
-- This file documents business rules enforced at database level
-- Dataset: Global Superstore

-- Business rule:
-- Each product should appear only once per order
ALTER TABLE order_items
ADD CONSTRAINT unique_order_product
UNIQUE (OrderID, ProductID);
