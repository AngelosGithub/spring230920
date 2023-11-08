package com.example.spring230920.dao;

import com.example.spring230920.domain.MyDto33Employee;
import com.example.spring230920.domain.MyDto34Customer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Map;
@Mapper
public interface MyDao10 {

    @Select("""
SELECT CustomerName
FROM customers
WHERE CustomerID = 50
""")
    String customerName();

    @Select("""
SELECT CustomerID id, customerName, country, address, city
FROM customers
WHERE CustomerID = 40
""")
    MyDto34Customer getCustomer();

    @Select("""
SELECT CustomerID id, CustomerName, country, address, city
FROM customers
WHERE CustomerID = #{id}
""")
    MyDto34Customer getCustomerById(Integer id);

    @Select("""
SELECT LastName, FirstName
FROM employees
WHERE EmployeeID = #{id}
""")
    MyDto33Employee getEmployeeById(Integer id);
}
