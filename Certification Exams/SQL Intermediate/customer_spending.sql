/*
customers who spent 25% or less than avg(all invoice)
display name, amount 6 decimals
order by amount desc
*/

SELECT customer.customer_name, ROUND(SUM(invoice.total_price), 6) 
FROM customer 
JOIN invoice 
ON customer.id = invoice.customer_id 
GROUP BY customer.customer_name 
HAVING SUM(invoice.total_price) <= 0.25 * (SELECT AVG(invoice.total_price) FROM invoice) 
ORDER BY SUM(invoice.total_price) DESC;

-- there seem to be an issue earlier towards hackerrank end regarding answer validation
-- also it isn't intuitive to calculate the SUM from the question as far as i remember
