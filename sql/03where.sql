SELECT CustomerName, Address, City, Country FROM customers;
 -- WHERE : 레코드 선택(솎아내기)

 SELECT * FROM customers WHERE CustomerID = 1;
 SELECT * FROM customers WHERE CustomerID = 2;
 SELECT * FROM customers WHERE Country = 'USA';
 SELECT * FROM customers WHERE Country = 'Mexico';

 SELECT * FROM customers WHERE Country = 'France'; -- 문자열은 ''
 SELECT * FROM customers WHERE CustomerID = 3; -- 숫자는 따옴표 없이(있어도 됨)

 -- 예1) 영국(UK)에 사는 고객 조회
 -- 예2) 1번 카테고리에 속한 상품(products) 조회
 -- 예3) osaka에 있는 공급자 조회

SELECT * FROM customers WHERE Country = 'UK'; -- 예1
SELECT * FROM products WHERE CategoryID = 1; -- 예2
SELECT * FROM suppliers WHERE City = 'osaka'; -- 예3

-- 미국에 사는 고객의 이름
SELECT CustomerName FROM customers WHERE Country = 'USA';

-- 예1) 2번 카테고리에 있는 상품명과 가격 조회
-- 예2) 일본에 있는 공급자의 이름과 전화번호 조회
-- 예3) 2번 카테고리의 이름 조회

SELECT ProductName, Price
FROM products
WHERE CategoryID = 2; -- 예1

SELECT SupplierName, Phone
FROM suppliers
WHERE Country = 'Japan'; -- 예2

SELECT CategoryName
FROM categories
WHERE CategoryID = 2; -- 예3

