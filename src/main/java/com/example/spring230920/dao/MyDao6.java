package com.example.spring230920.dao;

import com.example.spring230920.domain.MyDto37;
import com.example.spring230920.domain.MyDto38;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface MyDao6 {

    @Insert("""
INSERT INTO customers (customerName)
VALUE (#{name})
""")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert1(MyDto37 name);

    @Insert("""
INSERT INTO employees (lastName)
VALUE (#{lastName})
""")
    @Options(useGeneratedKeys = true, keyProperty = "eid")
    int insert2(MyDto38 dto);

    @Insert("""
INSERT INTO employees(LastName, FirstName)
VALUE (#{lastName}, #{firstName})
""")
    @Options(useGeneratedKeys = true, keyProperty = "eid")
    int insert3(MyDto38 dto);

    @Update("""
UPDATE bank
SET money = money - 1000
WHERE name = 'son'
""")
    int update1();

    @Update("""
UPDATE bank
SET money = money + 1000
WHERE name = 'kim'
""")
    void update2();

    @Select("""
SELECT *
FROM bank
ORDER BY name
""")
    List<Map<String,Object>> select3();

}
