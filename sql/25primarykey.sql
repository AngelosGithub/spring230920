USE mydb1;
-- PRIMARY KEY (주키, 기본키, pk)

CREATE TABLE my_table27 (
    id INT PRIMARY KEY ,
    name VARCHAR(20)
);
CREATE TABLE my_table28 (
    id INT,
    name VARCHAR(10),
    PRIMARY KEY (id)
);
CREATE TABLE my_table29 (
    name VARCHAR(10),
    birth DATE,
    PRIMARY KEY (name, birth)
);

CREATE TABLE my_table30 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10)
);

INSERT INTO my_table30 (name)
VALUE ('son');
INSERT INTO my_table30 (name)
    VALUE ('kim');
INSERT INTO my_table30 (name)
    VALUE ('lee');

SELECT * FROM my_table30;
-- 중간열을 지우고 다시 데이터를 넣으면 지워진 열이 아닌 새로운 열에 생성됨
DELETE FROM my_table30
WHERE id = 4;