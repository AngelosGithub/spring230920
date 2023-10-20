package com.example.spring230920.dao;

import com.example.spring230920.domain.*;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.List;
@Mapper
public interface MyDao4 {
    @Select("""
            SELECT CustomerName
            FROM customers
            WHERE CustomerID = #{aldkjflajdlkfj}
            """)
        // 파라미터가 하나면 이름이 일치하지 않아도됨
        // 두 개 이상이면 꼭 이름을 맞춰 줘야함!!
    String select1(int customerId);

    @Select("""
        SELECT ProductName 
        FROM products
        WHERE Price BETWEEN #{from} AND #{to}      
        """)
    List<String> select2(Double from, Double to);

    @Select("""
            SELECT DISTINCT (p.productName)
            FROM products p JOIN orderdetails od ON p.productID = od.productID
                            JOIN orders o ON od.orderID = o.orderID
            WHERE orderDate BETWEEN #{min} AND #{max}
            ORDER BY 1
            """)
    List<String> select3(LocalDate min, LocalDate max);


    @Select("""
        SELECT *
        FROM products
        WHERE Price BETWEEN #{min} AND #{max}
        """)
    List<String> select4(MyDto25 dto);

    @Select("""
        SELECT CustomerName
        FROM customers
        WHERE country IN(#{country1}, #{country})
    """)
    List<String> select5(MyDto26 dto);

    @Select("""
SELECT COUNT(OrderID)
FROM orders
WHERE OrderDate BETWEEN #{dto1.from} AND #{dto2.to}
""")
    Integer select6(MyDto27 dto1, MyDto28 dto2);

    @Select("""
SELECT customerName
        FROM customers
        WHERE customerName LIKE #{dto2.keyword}
        LIMIT #{dto1.from}, #{dto1.rows}
""")
    List<String> select7(MyDto29 dto1, MyDto30 dto2);

    @Insert("""
INSERT INTO customers(CustomerName, Country)
VALUE (#{name}, #{country})
""")
    int insert1(MyDto31 dto);

    @Insert("""
    INSERT INTO employees(LastName, FirstName)
    VALUE (#{lastName}, #{firstName})
""")
    int insert2(MyDto32 emp);

    @Delete("""
DELETE FROM customers
WHERE CustomerID = #{id}
""")
    int delete1(Integer id);

    @Delete("""
DELETE FROM products
WHERE ProductID = #{pid}
""")
    int delete2(Integer pid);

    @Select("""
SELECT EmployeeID id,
        LastName,
        FirstName,
        BirthDate,
        Photo,
        Notes
FROM employees
WHERE EmployeeID = #{id}
""")
    MyDto33Employee select8(Integer id);

    @Update("""
UPDATE employees
SET LastName = #{lastName},
    FirstName = #{firstName},
    photo = #{photo},
    BirthDate = #{birthDate},
    Notes = #{notes}
WHERE EmployeeID = #{id}
""")
    int update1(MyDto33Employee employee);

    @Select("""
SELECT CustomerID id,
        CustomerName,
        Address,
        City,
        Country
FROM customers
WHERE CustomerID = #{id}
""")
    MyDto34Customer select9(Integer id);

    @Update("""
UPDATE customers
SET CustomerName = #{customerName},
    Address = #{address},
    city = #{city},
    Country = #{country}
WHERE CustomerID = #{id}
""")
    int update2(MyDto34Customer customer);
}
