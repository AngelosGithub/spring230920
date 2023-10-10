SELECT * FROM employees;
SELECT EmployeeID, LastName FROM employees;

-- AS : 컬럼명(테이블명) 변경
SELECT EmployeeID AS id,
       LastName AS name
FROM employees;

SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM employees;
-- AS 생략가능
SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) FullName
FROM employees;
-- backtick `` 으로 키워드나 특수문자 사용가능
SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) `Full Name`
FROM employees;

-- 예) 공급자의 이름, 주소(주소, 도시, 나라)
-- 전화번호(phone -> phone number)
SELECT SupplierName,
       CONCAT(Address,', ', City,', ', Country) Address,
       Phone AS `Phone Number`
FROM suppliers;

SELECT * FROM products;
SELECT * FROM categories;

SELECT products.ProductName,
       categories.CategoryName
FROM products JOIN categories
     ON products.CategoryID = categories.CategoryID;

SELECT p.ProductName,
       c.CategoryName
FROM products p JOIN categories c
     ON p.CategoryID = c.CategoryID;