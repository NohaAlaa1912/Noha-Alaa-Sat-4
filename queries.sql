-->> QUES 1-- show column ordernumber only on table
SELECT DISTINCT orderNumber FROM `orderdetails` 
WHERE productCode LIKE "s18%" 
AND priceEach > 100
--------------------------
-- --> ANOTHER ANSWER SHOW COLUMNS ordernumer and product number and priceEach in the same table
-- SELECT DISTINCT orderNumber, productCode, priceEach FROM orderdetails
--  WHERE productCode LIKE "s18%" 
--  AND priceEach > 100
------------------------------------------------------------------

-->> QUES 2--
SELECT * FROM `payments` 
WHERE paymentDate LIKE "%-05"
OR paymentDate LIKE "%-06"

---------------------------------------------------------------------

-->> QUES 3--

SELECT * from customers
where country = "USA"
and phone LIKE "%5555%"
order by creditLimit DESC
limit 1 offset 4
