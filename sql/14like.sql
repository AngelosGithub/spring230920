SELECT * FROM customers
WHERE CustomerName = 'Around the Horn';
SELECT * FROM customers
WHERE CustomerName LIKE '%the%';
SELECT * FROM customers
WHERE CustomerName LIKE '%ch%';

-- LIKE : 검색
-- %,_ 기호(wild card)와 같이 쓴다
-- % : 0개 이상의 문자 아무거나
-- _ : 1개의 문자 아무거나
SELECT * FROM customers
WHERE CustomerName LIKE 'ch%';
SELECT * FROM customers
WHERE CustomerName LIKE '%er';
SELECT * FROM customers
WHERE CustomerName LIKE '%er%';

SELECT *FROM employees
WHERE FirstName LIKE '_____';
SELECT *FROM employees
WHERE LastName LIKE '____';

SELECT *FROM employees
WHERE LastName LIKE '_e%';

SELECT * FROM employees;

-- 예) ch로 시작하는 상품명 조회
SELECT * FROM products
WHERE ProductName LIKE 'ch%';
-- 예) es로 끝나는 상품명 조회
SELECT * FROM products
WHERE ProductName LIKE '%es';
-- 예) 중간에 use가 들어간 상품명 조회
SELECT * FROM products
WHERE ProductName LIKE '%use%';
-- 예) 두전쨰 글자가 u인 상품 조회
SELECT * FROM products
WHERE ProductName LIKE '_u%';
