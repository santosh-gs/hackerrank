/*
4 tables: country, city, customer, invoice
average as float with 6 decimals
return  only countries where avg(invoice amount) > avg(all invoices)
*/

SET @avg_all = (SELECT AVG(total_price) FROM invoice);

SELECT country.country_name, COUNT(invoice.id), 
       ROUND(AVG(invoice.total_price), 6) 
FROM country 
JOIN city 
	ON city.country_id = country.id 
JOIN customer 
	ON customer.city_id = city.id 
JOIN invoice 
	ON invoice.customer_id = customer.id 
GROUP BY country.country_name 
HAVING AVG(invoice.total_price) > @avg_all;