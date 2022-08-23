SELECT name
, COUNT(barcode) barcodes
FROM brands b 
GROUP BY name
ORDER BY barcodes desc;

SELECT name
, COUNT(DISTINCT ri.barcode)
FROM receipt_items ri 
LEFT JOIN brands b 
ON ri.barcode = b.barcode
GROUP BY name;


SELECT ri.receipt_id 
, description 
, COUNT(receipt_id)
FROM receipt_items ri 
GROUP BY receipt__id, description

SELECT ri.receipt_id  
, barcode
, COUNT(receipt_id)
FROM receipt_items ri 
GROUP BY receipt_id, barcode

SELECT receipt_id 
,count(rewards_receipt_status)
FROM receipts
GROUP BY receipt_id