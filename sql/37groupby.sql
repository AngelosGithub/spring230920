USE w3schools;
-- GROUP BY : 그룹함수 사용시 범위 지정
SELECT MAX(Price) FROM products;
SELECT MAX(Price)
FROM products
GROUP BY CategoryID;

SELECT categoryID, MAX(Price), MIN(Price)
FROM products
GROUP BY CategoryID;

SELECT categoryID, MAX(Price) maxPrice, MIN(Price) minPrice
FROM products
GROUP BY CategoryID
ORDER BY maxPrice DESC;

SELECT o.OrderDate, SUM(p.Price * od.Quantity) AS 매출액
FROM products p
    JOIN orderdetails od
        ON p.ProductID = od.ProductID
    JOIN orders o
        ON od.OrderID = o.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;

-- 예) 직원별 주문 처리 금액
-- 직원명, 직원별 주문 처리액
SELECT e.LastName, e.FirstName, SUM(p.price * od.Quantity)
FROM employees e
    JOIN orders o
        ON e.EmployeeID = o.EmployeeID
    JOIN orderdetails od
        ON o.OrderID = od.OrderID
    JOIN products p
        ON od.ProductID = p.ProductID
GROUP BY e.EmployeeID;
-- 예) 고객별 총 주문 금액
-- 고객명, 고객별 주문 금액
SELECT c.CustomerName, SUM(p.Price * od.Quantity)
FROM customers c
    JOIN orders o
        ON c.CustomerID = o.CustomerID
    JOIN orderdetails od
        ON o.OrderID = od.OrderID
    JOIN products p
        ON od.ProductID = p.ProductID
GROUP BY c.CustomerID;