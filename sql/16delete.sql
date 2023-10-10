-- DELETE FROM tableName WHERE 조건
-- WHERE 절
SELECT * FROM employees WHERE LastName = '손';
DELETE FROM employees WHERE LastName = '손';

-- 지우기 전 같은 WHERE문으로 확인 필수

SELECT * FROM employees;

-- 예) 직원 테이블에 오늘 입력한 레코드 지우기
DELETE FROM employees WHERE LastName = '이';
DELETE FROM employees WHERE EmployeeID > 9;
-- 예) 상품 테이블에 오늘 입력한 레코드 지우기
DELETE FROM products WHERE ProductID > 77;
SELECT * FROM products WHERE ProductID > 77;
SELECT * FROM products;