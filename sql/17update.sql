SELECT * FROM products;
SELECT * FROM products WHERE ProductID = 6;

UPDATE products
SET ProductName = '차이즈',
    Unit = '10박스'
WHERE ProductID = 6;

UPDATE products
SET ProductName = '두부김치'; -- where 꼭 쓸것!!!!!(안쓰면 전체 테이블이 수정됨)

SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM suppliers;
-- 예) 1번 고객의 이름 수정
UPDATE customers
SET CustomerName = 'Angelo'
WHERE CustomerID = 2;
-- 예) 5번 직원의 notes 수정
UPDATE employees
SET Notes = 'pig'
WHERE EmployeeID = 5;
-- 예) 1번 공급자의 주소, 전화번호 수정
UPDATE suppliers
SET Address = 'seoul',
    Phone = '02-123-3456'
WHERE SupplierID = 1;

UPDATE products
SET Price = Price * 2
WHERE ProductID = 6;

SELECT * FROM shippers;