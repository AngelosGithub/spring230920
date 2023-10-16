USE w3schools;

-- aggregate function (집계함수, 집합함수, 그룹함수)
-- MAX, MIN, COUNT, SUM, AVG

SELECT * FROM products;

-- MAX
SELECT MAX(Price) FROM products;

SELECT productName, MAX(Price) FROM products; -- 전혀 다른 결과 나옴

SELECT * FROM products
WHERE Price = (SELECT MAX(Price) FROM products);

-- MIN
SELECT MIN(Price) FROM products;

SELECT * FROM products
WHERE Price = (SELECT MIN(Price) FROM products);

-- 예) 가장 어린 직원이름 조회
SELECT FirstName, LastName, BirthDate FROM employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM employees);
-- 예) 가장 나이 많은 직원이름 조회
SELECT FirstName, LastName, BirthDate FROM employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM employees);

-- COUNT
SELECT * FROM employees;
SELECT COUNT(EmployeeID) FROM employees;
SELECT COUNT(LastName) FROM employees;
SELECT COUNT(FirstName) FROM employees;

-- NULL 은 포함되지 않음
INSERT INTO employees(LastName)
VALUE ('흥민');

SELECT MIN(BirthDate) FROM employees;
SELECT MAX(BirthDate) FROM employees;

INSERT INTO products (ProductName)
VALUE ('커피');

SELECT * FROM products ORDER BY 1 DESC;
SELECT MIN(IFNULL(Price, 0)) FROM products;

SELECT * FROM products
WHERE IFNULL(Price, 0) = (SELECT MIN(IFNULL(Price, 0)) FROM products);

-- SUM
SELECT * FROM products;
SELECT SUM(Price) FROM products;

SELECT SUM(od.Quantity)
FROM orders o JOIN orderdetails od
    ON o.OrderID = od.OrderID
WHERE o.OrderDate = '1996-07-04';

-- 예) 1996-07-04 매출액 구하기
SELECT SUM(p.Price * od.Quantity)
FROM orders o
    JOIN orderdetails od
        ON o.OrderID = od.OrderID
    JOIN products p
        ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- AVG
SELECT AVG(Price) FROM products; -- 28.866364
SELECT SUM(Price) FROM products; -- 2222.71
SELECT COUNT(ProductID) FROM products; -- 78
SELECT COUNT(Price) FROM products; -- 77
