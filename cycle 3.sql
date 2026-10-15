CREATE DATABASE channels;
USE channels;

/*QUESTION -1*/

SELECT DISTINCT sales_channel AS channel_name
FROM vrinda_sales
WHERE sales_channel LIKE 'Ama%'
LIMIT 5;

/*QUESTION -2*/

SELECT DISTINCT category AS category
FROM vrinda_products
WHERE category LIKE '%kurta%'
LIMIT 10;

/*QUESTION -3*/
SELECT
    ship_city AS ship_name,
    order_id AS order_status,
    sales_channel AS channel_name,
    amount AS sale_id
FROM vrinda_sales
WHERE order_status = 'Delivered'
  AND sales_channel LIKE '%a%'
ORDER BY amount DESC
LIMIT 10;

/*QUESTION -4*/
SELECT DISTINCT
    ship_city AS city_name
FROM vrinda_sales
WHERE order_status = 'Delivered'
  AND ship_state LIKE '%PRADESH%'
ORDER BY city_name ASC
LIMIT 10;

/*QUESTION -5*/
SELECT
    order_id AS order_number,
    sales_channel AS channel,
    amount AS sale_amount
FROM vrinda_sales
WHERE sales_channel IN ('M', 'T')
  AND amount BETWEEN 1500 AND 12000
ORDER BY amount DESC
LIMIT 10;

