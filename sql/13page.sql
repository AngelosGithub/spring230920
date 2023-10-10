-- page
SELECT * FROM suppliers;
SELECT COUNT(*) FROM suppliers;

-- 레코드가 n 개이고 페이지당 10개씩 보여 줄 때 마지막 페이지 번호는?
-- ((n-1)/10)+1=m