CREATE TABLE BOARD (
    Number INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(8) NOT NULL ,
    Title VARCHAR(50) NOT NULL ,
    Content VARCHAR(4000) NOT NULL ,
    HitCount INT,
    Created DATETIME
);
DROP TABLE BOARD;
SELECT * FROM BOARD;
INSERT INTO BOARD (Number, Name, Title, Content, HitCount, Created)
value ();