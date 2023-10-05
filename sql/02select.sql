-- SELECT : 데이터 조회 (읽기, 검색, 가져오기)
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.products;

SELECT * FROM customers;
SELECT * FROM categories;
SELECT * FROM orderdetails;
SELECT * FROM shippers;

--
SELECT CustomerName      -- column명 나열
FROM customers      -- table명 나열
;

SELECT CustomerID, CustomerName
FROM customers;

SELECT CustomerName, CustomerID, Country
FROM customers;

SELECT * -- 전체 컬럼
FROM customers;

-- 예1) 직원(employees)의 lastname, firstname, birthdate 조회
-- 예2) 상품(products)의 이름, 단위, 가격 조회
-- 예3) 공급자(suppliers)의 이름, 주소, 국가 조회

SELECT LastName, FirstName, BirthDate
FROM employees; -- 예1

SELECT ProductName, Unit, Price
FROM products; -- 예2

SELECT SupplierName, Address, Country
FROM suppliers; -- 예3

SELECT Country FROM customers;

-- DISTINCT 중복제거
SELECT DISTINCT Country from customers;

SELECT City, Country FROM customers;
SELECT DISTINCT City, Country FROM customers;

-- COUNT 행의 수
SELECT COUNT(Country) FROM customers;
SELECT COUNT(DISTINCT Country) FROM customers;

-- 전체 행의 수
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM orders;

-- 예1)공급자들이 있는 나라 수
-- 예2)주문 건수
-- 예3)몇 개의 카테고리가 있는지
-- 예4)고객이 있는 도시의 수
SELECT COUNT(DISTINCT Country) FROM suppliers;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM categories;
SELECT COUNT(DISTINCT City) FROM customers;

