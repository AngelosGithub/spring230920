-- 정규화 NORMALIZATION
-- 첫번째 정규화 (FIRST NORMAL FORM) = 1NF
-- 원자적 데이터를 가진 테이블, PK 컬럼이 있어야 함

-- 책 (369p)
-- 두번째 정규화 (SECONED NORMAL FORM) = 2NF
-- 1NF이고, 부분적 함수 의존이 없어야 함
-- 부분적 함수의존? (partial functional dependency)
-- 키가 아닌 컬럼의 값이 키 컬럼 일부에 종속되지 않아야 한다
-- 키의 일부가 변경될 때 키가 아닌 컬럼이 변경되어야 하면 부분적 함수의존

-- 책 (374p)
-- 세번째 정규화 (THIRD NORMAL FORM) = 3NF
-- 2NF이고, 이행적 종속이 없어야 함

-- 이행적 존속?? (transitive dependency) :
-- 키가 아닌 컬럼이 키가 아닌 다른 컬럼에 의존
-- 키가 아닌 컬럼이 변경될 때 다른 키가 아닌 컬럼이 변경되어야 할 때

-- 입사 지원자
-- id, 이름, 학교, 학교주소
USE mydb1;

CREATE TABLE my_table30_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school VARCHAR(10),
    school_address VARCHAR(10)
);
INSERT INTO my_table30_person (name, school, school_address)
VALUES ('흥민', '서울대', '관악'),
       ('강인', '고려대', '안암'),
       ('민재', '연세대', '신촌'),
       ('지성', '고려대', '안암'),
       ('범근', '연세대', '신촌');
SELECT * FROM my_table30_person;

CREATE TABLE my_table31_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school VARCHAR(10)
);
CREATE TABLE my_table32_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    address VARCHAR(10)
);

INSERT INTO my_table31_person (name, school)
VALUES ('흥민', '서울대'),
       ('강인', '고려대'),
       ('민재', '연세대'),
       ('지성', '고려대'),
       ('범근', '연세대');

INSERT INTO my_table32_person (name, address)
VALUES ('서울대', '관악'),
       ('고려대', '안암'),
       ('연세대', '신촌');

CREATE TABLE my_table33_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school_id INT -- 한 테이블의 컬럼이 다른 테이블을 참조하면 PK를 사용 해야 함
);
CREATE TABLE my_table34_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    address VARCHAR(10)
);


CREATE TABLE my_table35_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school_id INT REFERENCES my_table36_person(id)
    -- 한 테이블의 컬럼이 다른 테이블을 참조하면 PK를 사용 해야 함
    -- 외래키(foreign key) 제약사항
);
CREATE TABLE my_table36_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    address VARCHAR(10)
);

-- 외래키, 참조키, FK (foreign key)