USE w3schools;

SELECT Price FROM products WHERE ProductName = 'ipoh coffee';
SELECT productname, Price FROM products
WHERE Price > 46.00;

SELECT productname, Price FROM products
WHERE Price > (SELECT Price FROM products WHERE ProductName = 'ipoh coffee');
-- 쿼리 안에 쿼리가 포함되어 있으면 sub Query 라고 한다

SELECT BirthDate FROM employees
WHERE LastName = 'Leverling';

SELECT LastName, FirstName, BirthDate FROM employees
WHERE BirthDate < '1963-08-30';

SELECT LastName, FirstName, BirthDate FROM employees
WHERE BirthDate < (SELECT BirthDate FROM employees
                   WHERE LastName = 'Leverling');

-- subquery
-- 행 1개 열 1개 (등호, 부등호 사용 가능)
SELECT BirthDate FROM employees
WHERE LastName = 'Leverling';

-- 행 여러개 열 1개
SELECT ShipperID FROM orders WHERE OrderDate = '1996-07-08';
SELECT CustomerName FROM customers WHERE Country = 'mexico';

-- 행 여러개 열 여러개
SELECT CustomerID, CustomerName FROM customers WHERE Country = 'mexico';

-- 행 1개 열 1개 예제
-- 'tofu' 상품 공급하는 공급자 이름
SELECT SupplierID FROM products WHERE ProductName = 'tofu';

SELECT SupplierID, SupplierName FROM suppliers
WHERE SupplierID = 6;

SELECT SupplierID, SupplierName FROM suppliers
WHERE SupplierID = (SELECT SupplierID FROM products WHERE ProductName = 'tofu');

SELECT s.SupplierID, s.SupplierName
FROM suppliers s JOIN products p ON s.SupplierID = p.SupplierID
WHERE p.ProductName = 'tofu';

-- 행 여러개 열 1개
-- 멕시코 고객이 주문한 날짜
SELECT CustomerID FROM customers WHERE Country = 'mexico';
SELECT OrderDate FROM orders WHERE CustomerID IN (2, 3, 13, 58, 80);

SELECT OrderDate FROM orders
WHERE CustomerID IN (SELECT CustomerID FROM customers WHERE Country = 'mexico');

-- 예) 1번 카테고리 상품이 주문된 주문번호
SELECT ProductID FROM products WHERE CategoryID = 1;
SELECT OrderID FROM orderdetails
WHERE ProductID IN (SELECT ProductID FROM products WHERE CategoryID = 1);

-- 예) 1번 카테고리에 있는 상품이 주문된 날짜 (orderDetails, products)
SELECT OrderDate, OrderID FROM orders
WHERE OrderID IN (SELECT OrderID FROM orderdetails
                  WHERE ProductID IN (SELECT ProductID FROM products WHERE CategoryID = 1));
-- 위의 코드는 OrderID가 키이기 때문에 중복되는 데이터가 없어서 갯수가 적게 나옴
SELECT o.OrderDate, o.OrderID
FROM orders o JOIN orderdetails od ON o.OrderID = od.OrderID
              JOIN products p ON od.ProductID = p.ProductID
WHERE p.CategoryID = 1;

-- 예) 주문한 적 없는 고객들
SELECT CustomerID FROM orders;

SELECT * FROM customers
         WHERE CustomerID NOT IN (SELECT CustomerID FROM orders);

-- 행 여러개 열 여러개
SELECT * FROM customers;

-- 예) 1번 카테고리에 있는 상품들로 새 테이블을 만드는데
--      새로운 테이블(table_d)은 productname, categoryname, price

SELECT * FROM products;
SELECT * FROM products
WHERE CategoryID = 1;
#           IN (SELECT CategoryID FROM categories WHERE CategoryID = 1);

