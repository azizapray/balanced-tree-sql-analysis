--- 10 ---
SELECT pd.product_name, SUM(s.qty * s.price) AS revenue
FROM balanced_tree.sales AS s
LEFT JOIN balanced_tree.product_details AS pd ON s.prod_id = pd.product_id
GROUP BY pd.product_name
ORDER BY revenue DESC

--- 11 ---
SELECT pd.product_name, SUM(s.qty * s.price) AS revenue
FROM balanced_tree.sales AS s
LEFT JOIN balanced_tree.product_details AS pd ON s.prod_id = pd.product_id
GROUP BY pd.product_name
ORDER BY revenue DESC
LIMIT 3

--- 12 ---
WITH product_revenue AS (
    SELECT
        ph.level_text AS segment_name,
        pd.product_name,
        SUM(s.qty * s.price) AS product_revenue
    FROM balanced_tree.sales s
    JOIN balanced_tree.product_details pd
        ON s.prod_id = pd.product_id
    JOIN balanced_tree.product_hierarchy ph
        ON pd.segment_id = ph.id
    WHERE ph.level_name = 'Segment'
    GROUP BY
        ph.level_text,
        pd.product_name
)

SELECT
    segment_name,
    product_name,
    product_revenue,
    ROUND(
        100.0 * product_revenue
        / SUM(product_revenue)
            OVER (PARTITION BY segment_name),
        2
    ) AS revenue_pct_split
FROM product_revenue
ORDER BY
    segment_name,
    revenue_pct_split DESC;

--- 13 ---
WITH category_revenue AS (
    SELECT
        ph.level_text AS category_name,
        SUM(s.qty * s.price) AS revenue
    FROM balanced_tree.sales s
    JOIN balanced_tree.product_details pd
        ON s.prod_id = pd.product_id
    JOIN balanced_tree.product_hierarchy ph
        ON pd.category_id = ph.id
    WHERE ph.level_name = 'Category'
    GROUP BY
        ph.level_text
)

SELECT
    category_name,
    revenue,
    ROUND(
        100.0 * revenue
        / SUM(revenue) OVER (),
        2
    ) AS revenue_contribution_pct
FROM category_revenue
ORDER BY revenue DESC;