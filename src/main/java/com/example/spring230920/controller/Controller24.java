package com.example.spring230920.controller;

import com.example.spring230920.domain.MyDto18Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.*;

@Controller
@RequestMapping("main24")
public class Controller24 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() throws SQLException {
        String sql = """
                INSERT INTO products (ProductName, SupplierID, CategoryID, Unit, Price)
                VALUE (?, ?, ?, ?, ?);
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setString(1, "돈까스");
            statement.setInt(2, 3);
            statement.setInt(3, 4);
            statement.setString(4, "한 장");
            statement.setDouble(5, 500.00d);

    //        statement.executeQuery(); // select 쿼리
            statement.executeUpdate(); // insert(delete, update) 쿼리

            int count = statement.executeUpdate();

            if (count == 1) {
                System.out.println("잘됨!");
            } else {
                System.out.println("잘못됨!");
            }
        }
    }

    @GetMapping("sub2")
    public void method2() throws SQLException {
        String sql = """
                INSERT INTO suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
                VALUE (?, ?, ?, ?, ?, ?, ?);
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setString(1,"son");
            statement.setString(2,"kim");
            statement.setString(3,"dong-gu");
            statement.setString(4,"seoul");
            statement.setInt(5,5);
            statement.setString(6,"korea");
            statement.setString(7,"010-0101-1010");

            statement.executeUpdate();
        }


    }

    @GetMapping("sub3")
    public void method3() {

    }

    @GetMapping("sub4")
    public void method4() {

    }
    @PostMapping("sub4")
    public void method5(MyDto18Employee employee) throws SQLException {
        String sql = """
                INSERT INTO employees (LastName, FirstName, BirthDate, Photo, Notes)
                VALUE (?, ?, ?, ?, ?)
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setString(1, employee.getLastName());
            statement.setString(2, employee.getFirstName());
            statement.setTimestamp(3, Timestamp.valueOf(employee.getBirthDate().atStartOfDay()));
            statement.setString(4, employee.getPhoto());
            statement.setString(5, employee.getNotes());

            int count = statement.executeUpdate();

            if (count == 1) {
                System.out.println("잘 입력됨!!");
            } else {
                System.out.println("뭔가 잘못됨!!");
            }
        }
    }
}
