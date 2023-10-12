USE w3schools;

SELECT * FROM products;
SELECT * FROM categories;

-- JOIN : 두개의 테이블 결합
SELECT *
FROM categories JOIN products;

SELECT COUNT(*)
FROM categories; -- 8

SELECT COUNT(*)
FROM products; -- 77

CREATE TABLE table_a (
    product_id INT primary key AUTO_INCREMENT,
    product_name varchar(20),
    category_id INT
);
CREATE TABLE table_b (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(20)
);
# DROP TABLE table_b;
INSERT INTO table_b (category_name)
VALUES ('음료수'), ('반찬');
INSERT INTO table_a (product_name, category_id)
VALUES ('콜라', 1),
       ('사이다', 1),
       ('제육', 2),
       ('돈까스', 2),
       ('두부', 2);

SELECT *
FROM table_a JOIN table_b;

-- 두 테이블 결합하면
-- 조회된 레코드 수는 A테이블 row * B테이블 row
-- 컬럼의 수는 A테이블 열 + B테이블 열
-- = 카테시안 곱

SELECT *
FROM table_a JOIN table_b
WHERE product_name = '콜라' -- 컬럼명이 하나의 테이블에만 있을때 테이블명 생략 가능
    AND table_a.category_id = table_b.category_id;

SELECT *
FROM table_a JOIN table_b
    ON table_a.category_id = table_b.category_id  -- join 조건
WHERE product_name = '콜라';

SELECT CategoryName, ProductName, ProductID
FROM products p JOIN categories c
    ON p.CategoryID = c.CategoryID
WHERE ProductName = 'chais';

-- 예) chais 상품의 공급자명과 전화번호
SELECT SupplierName, Phone
FROM suppliers s JOIN products p
    ON s.SupplierID = p.ProductID
WHERE ProductName = 'chais';
-- 예) 1996년 7월 4일에 주문한 고객명
SELECT CustomerName
FROM customers JOIN orders
    ON customers.CustomerID = orders.CustomerID
WHERE OrderDate = '1996-07-04';
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM employees;
-- 예) 1996년 7월 4일에 주문담당 직원명
SELECT LastName, FirstName
FROM employees JOIN orders
    ON employees.EmployeeID = orders.EmployeeID
WHERE OrderDate = '1996-07-04';