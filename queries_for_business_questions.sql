--For questions 1 and 2
with brand_data as
(
SELECT strftime('%Y-%m', r.scanned_date) as month
, ri.brand_code as brand
, COUNT(DISTINCT ri.receipt_id) as items
FROM receipt_items ri 
LEFT JOIN receipts r
ON r.receipt_id = ri.receipt_id 
GROUP BY month, brand
ORDER BY month desc, items desc
)
, ranks as 
(
SELECT *
, ROW_NUMBER() OVER (PARTITION BY month ORDER BY items desc) as brand_rank
FROM brand_data
)
SELECT * FROM ranks
WHERE brand_rank <= 5
ORDER BY month desc;

--Question 5
SELECT rewards_receipt_status 
, AVG(total_spent) as avg_spend
FROM receipts
GROUP BY rewards_receipt_status;

--Question 6
SELECT r.rewards_receipt_status
, COUNT(ri.receipt_id) as items
FROM receipt_items ri
LEFT JOIN receipts r
on ri.receipt_id = r.receipt_id 
GROUP BY rewards_receipt_status;