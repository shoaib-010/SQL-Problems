# Write your MySQL query statemenT
SELECT
    product_id,
    product_name,
    description
FROM
    products
WHERE
    description REGEXP  '(^|[^A-Z0-9])SN[0-9]{4}-[0-9]{4}([^0-9A-Z]|$)'
    and description like binary '%SN%'
ORDER BY
    product_id;