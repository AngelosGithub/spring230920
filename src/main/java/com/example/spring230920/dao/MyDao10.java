package com.example.spring230920.dao;

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
}
