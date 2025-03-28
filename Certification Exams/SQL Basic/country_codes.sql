-- concatenate phone number with corresponding country codes

SELECT customers.customer_id, 
	customers.name, 
    CONCAT("+", country_codes.country_code, customers.phone_number) 
FROM customers 
JOIN country_codes 
	ON customers.country = country_codes.country 
ORDER BY customers.customer_id;