USE w3schools;
-- union 합집합

SELECT Country FROM customers;
SELECT Country FROM suppliers;

-- union 중복 제거
SELECT Country FROM customers
UNION
SELECT Country FROM suppliers;

-- union 중복 제거 안함
SELECT Country FROM customers
UNION ALL
SELECT Country FROM suppliers;

-- 집합을 만드는 컬럼의 갯수는 같아야 함
SELECT CustomerName, Country FROM customers
UNION
SELECT SupplierName, Country FROM suppliers;

-- 예) 직원의 lastname, firstname을 name이라는 하나의 컬럼으로 조회
SELECT LastName AS name FROM employees
UNION
SELECT FirstName FROM employees;

-- FULL OUTER JOIN
USE mydb1;
SELECT * FROM my_table44_a a LEFT JOIN my_table45_b b
    ON a.col1 = b.col1
UNION
SELECT * FROM my_table44_a a RIGHT JOIN my_table45_b b
    ON a.col1 = b.col1;

-- LEFT OUTER JOIN
SELECT * FROM my_table44_a a LEFT JOIN my_table45_b b
    ON a.col1 = b.col1;

-- RIGHT OUTER JOIN
SELECT * FROM my_table44_a a RIGHT JOIN my_table45_b b
    ON a.col1 = b.col1;