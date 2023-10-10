-- INSERT INTO tableName (columnName1, columnName2 ....
-- VALUES (value1, value2 ....
INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (10, '손', '흥민', '2000-01-02', '사진10','epl 득점왕');

SELECT * FROM employees;

INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (11, '이', '강인', '2000-01-03', '사진11','드리블 잘함');

-- 모든 컬럼에 값을 넣을때는 컬럼명 나열 생략 가능
INSERT INTO employees
VALUES (12, '김', '민재', '2000-01-04', '사진12','수비 잘함');

SELECT * FROM employees;

-- 특정 컬럼에만 값을 넣을때는 컬럼명 생략 불가능
-- 나열된 컬럼명과 값의 순서, 갯수가 같아야 함
INSERT INTO employees(EmployeeID, FirstName, LastName)
VALUE (13, '박', '지성');

INSERT INTO employees(EmployeeID, LastName, FirstName)
VALUE (14, '차', '범근');

SELECT * FROM employees;

-- 갯수가 다르면 추가 할 수 없다
INSERT INTO employees(EmployeeID, FirstName, LastName)
VALUE (15, '김');
INSERT INTO employees(EmployeeID, FirstName, LastName)
VALUE (16, '김', '두식', '하늘을 난다');

-- 값의 타입에 따라 넣는 방법이 다르다
INSERT INTO employees (EmployeeID)
VALUE (15); -- 권장

INSERT INTO employees (EmployeeID)
VALUE ('15'); -- 되긴됨

INSERT INTO employees (LastName)
value ('son');

INSERT INTO employees (LastName)
value ('10000'); -- 권장
INSERT INTO employees (LastName)
value (10000); -- 되긴 됨

SELECT * FROM employees ORDER BY EmployeeID DESC;

SELECT * FROM products;

INSERT INTO products (Price)
VALUE (20.10);

SELECT * FROM products ORDER BY ProductID DESC;

-- 예) 80번 상품 입력
INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUE (79, 'Olive OIl', 77, 7, '500ml', 30.33);
-- 예) 새 상품 입력
INSERT INTO products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUE ('김치', 2, 2, '1 포기', 77.33);

INSERT INTO products
VALUE (81,'김치', 2, 2, '1 포기', 77.33);

SELECT * FROM suppliers ORDER BY SupplierID DESC;
