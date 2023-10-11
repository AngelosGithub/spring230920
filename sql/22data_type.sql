-- mariadb INT - java int
-- mariadb DEC - java double
-- mariadb VARCHAR - java String
-- mariadb DATE - java Timestamp (LocalDate)
-- mariadb DATETIME - java Timestamp (LocalDateTime)

USE mydb1;
CREATE TABLE my_table12 (
    int_col INT,
    dec_col DEC(10,2),
    str_col VARCHAR(10),
    date_col DATE,
    datetime_col DATETIME
);
INSERT INTO  my_table12 (int_col, dec_col, str_col, date_col, datetime_col)
VALUE ();
SELECT * FROM my_table12;