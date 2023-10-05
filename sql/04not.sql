SELECT * FROM customers;
SELECT CustomerName, Country FROM customers WHERE Country = 'Germany';
-- Germany 를 제외한 결과
SELECT CustomerName, Country FROM customers WHERE NOT Country = 'Germany';

-- 예1) 1번 카테고리에 속하지 않는 상품 조회
SELECT * FROM products WHERE NOT CategoryID = 1;
-- 예2) Japan 에 있지 않은 공급자들 조회
SELECT * FROM suppliers WHERE NOT Country = 'Japan'