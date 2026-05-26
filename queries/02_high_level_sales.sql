--- 1 ---
SELECT pd.product_name, SUM(s.qty) AS total_qty
FROM balanced_tree.sales AS s
LEFT JOIN balanced_tree.product_details AS pd on s.prod_id = pd.product_id
GROUP BY pd.product_name

--- 2 ---
SELECT pd.product_name, sum(s.qty * s.price) AS total_revenue
FROM balanced_tree.sales AS s
LEFT JOIN balanced_tree.product_details AS pd ON s.prod_id = pd.product_id
GROUP BY pd.product_name;

--- 3 ---
SELECT sum(qty * price * discount / 100) AS discount_amount
FROM balanced_tree.sales

--- 4 ---
SELECT COUNT(DISTINCT txn_id) as num_of_unique_transactions
FROM balanced_tree.sales