SELECT Price FROM products WHERE ProductID = 1;
SELECT Price + 1 FROM products WHERE ProductID = 1;
SELECT Price - 10.5 FROM products WHERE ProductID = 1;
SELECT Price * 3 FROM products WHERE ProductID = 1;
SELECT Price / 5 FROM products WHERE ProductID = 1;

SELECT  ProductName, Price * 2 FROM products;

SELECT ProductName + 1, Price FROM products; -- 문자열 연결연산은 안됨

SELECT CONCAT(ProductName, 1), Price FROM products;
-- concat은 내장함수라 다른 DB를 쓰면 함수 이름이 다를수 있음

-- 1968-12-08
SELECT LastName, BirthDate FROM employees WHERE EmployeeID = 1;
-- 19681209 (날짜가 아닌 수로 변환됨)
SELECT LastName, BirthDate + 1 FROM employees WHERE EmployeeID = 1;
-- 날짜 형식 유지 내장함수
SELECT LastName, ADDDATE(BirthDate, INTERVAL 1 DAY )
FROM employees
WHERE EmployeeID = 1;

SELECT * FROM employees;
SELECT EmployeeID, LastName, FirstName FROM employees;
SELECT EmployeeID,CONCAT(LastName, FirstName) FROM employees;
SELECT EmployeeID,CONCAT(LastName, ' ', FirstName) FROM employees;
SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName),
       ADDDATE(BirthDate, INTERVAL 1 YEAR )
FROM employees;
-- 날짜를 줄이고 싶을때
SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName),
       ADDDATE(BirthDate, INTERVAL -1 YEAR )
FROM employees;

-- 예) 주문수량(quantity) *2 결과 조회 (orderDetails 테이블)
SELECT Quantity, Quantity * 2 FROM orderdetails;
-- 예) "City, Country" 고객 테이블 조회
SELECT CONCAT(City,', ',Country) FROM customers