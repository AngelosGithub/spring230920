USE w3schools;
-- HAVING : 그룹함수 연산결과를 조건으로 줄 수 있는 키워드

-- 10만 달러 이상 소비한 고객 조회
SELECT * FROM
    (SELECT c.CustomerName, SUM(p.Price * od.Quantity) `총 주문금액`
     FROM customers c JOIN orders o ON c.CustomerID = o.CustomerID
                      JOIN orderdetails od ON o.OrderID = od.OrderID
                      JOIN products p ON od.ProductID = p.ProductID
     GROUP BY c.CustomerID) t1
WHERE t1.`총 주문금액` >= 100000;

-- HAVING
SELECT c.CustomerName, SUM(p.Price * od.Quantity) `총 주문금액`
FROM customers c JOIN orders o ON c.CustomerID = o.CustomerID
                 JOIN orderdetails od ON o.OrderID = od.OrderID
                 JOIN products p ON od.ProductID = p.ProductID
GROUP BY c.CustomerID
HAVING `총 주문금액` >= 100000
ORDER BY `총 주문금액` DESC;

-- 예) 총 처리 금액이 10만달러 미만인 직원 조회
SELECT e.FirstName, e.LastName, SUM(p.Price * od.Quantity)
FROM employees e
    JOIN orders o
        ON e.EmployeeID = o.EmployeeID
    JOIN orderdetails od
        ON o.OrderID = od.OrderID
    JOIN products p
        ON od.ProductID = p.ProductID
GROUP BY e.EmployeeID
HAVING SUM(p.Price * od.Quantity) < 100000;
