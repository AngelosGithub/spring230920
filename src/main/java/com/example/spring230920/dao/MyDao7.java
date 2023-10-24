package com.example.spring230920.dao;

import com.example.spring230920.domain.MyDto40;
import com.example.spring230920.domain.MyDto41;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.Map;
import java.util.Objects;

@Mapper
public interface MyDao7 {
    @Select("""
SELECT * FROM customers
WHERE customerID = 5
""")
    Map<String, Objects> selectByCustomerId(Integer id);

    @Select("""
SELECT * FROM employees
WHERE employeeID = 2
""")
    Map<String, Objects> selectByEmployeeId(Integer id);


    @Insert("""
INSERT INTO employees (LastName, FirstName, BirthDate)
VALUES (#{lastName}, #{firstName}, #{birthDate})
""")
    int insertEmployee(String lastName, String firstName, LocalDate birthDate);

    @Insert("""
INSERT INTO products (ProductName, Price, CategoryID)
VALUES (#{name}, #{price}, #{category})
""")
    int insertProduct(String name, Double price, Integer category);

    
    @Delete("""
DELETE FROM products
WHERE ProductID = #{pid}
""")
    int deleteByProductId(Integer pid);

    @Delete("""
DELETE FROM customers
WHERE CustomerID = #{cid}
""")
    int deleteByCustomerId(Integer cid);

    @Update("""
UPDATE products
SET Price = #{price},
CategoryID = #{category},
ProductName = #{name}
WHERE ProductID = #{id}
""")
    int updateProduct(MyDto40 dto);

    @Update("""
UPDATE employees
SET firstName = #{firstName},
lastName = #{lastName},
birthDate= #{birthDate}
WHERE EmployeeID = #{id}
""")
    int updateEmployee(MyDto41 dto);
}
