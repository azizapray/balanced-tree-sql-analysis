--- 5 ---
SELECT txn_id, COUNT(DISTINCT prod_id) AS jmlh_barang
FROM balanced_tree.sales
GROUP BY txn_id

--- 6 ---
SELECT ROUND(AVG(jmlh_barang))
FROM (SELECT txn_id, count(distinct prod_id) AS jmlh_barang
	  FROM balanced_tree.sales
	  GROUP BY txn_id
	  ) AS a
  
--- 7 ---
SELECT txn_id, round(avg(qty*price*discount/100), 2) AS revenue_per_trx
FROM balanced_tree.sales
group by txn_id

--- 8 ---
SELECT 
	member, 
    COUNT(DISTINCT txn_id) AS total_txn,
    ROUND(COUNT(DISTINCT txn_id) / SUM(COUNT(DISTINCT txn_id)) OVER (), 2) * 100 AS percentage
FROM balanced_tree.sales
GROUP BY member

--- 9 ---
SELECT 
	member, 
    AVG(qty * price * (100 - discount / 100)) AS revenue
FROM balanced_tree.sales
GROUP BY member