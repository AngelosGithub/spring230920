package com.example.spring230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main23")
public class Controller23 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(String keyword) throws SQLException {
        String sql = """
                SELECT * FROM products
                WHERE productName LIKE ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%" + keyword + "%");
        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet) {
            System.out.println();
            System.out.println(keyword + " 가 포함된 상품");
            while (resultSet.next()) {
                String name = resultSet.getString("productName");
                System.out.println("name = " + name);
            }
        }
    }

    // /main23/sub2?k=erd
    // erd 라는 텍스트가 중간에 있는 고객명 조회하는 메소드 작성
    @GetMapping("sub2")
    public void method2(@RequestParam(value = "k", defaultValue = "") String keyword, Model model) throws SQLException {
        String sql = """
                SELECT * FROM customers
                WHERE customerName LIKE ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%"+ keyword +"%");
        ResultSet resultSet = statement.executeQuery();

        List<String> list = new ArrayList<>();
        try (connection; statement; resultSet) {
//            System.out.println();
//            System.out.println(keyword + " 검색결과");
            while (resultSet.next()) {
                String name = resultSet.getString("customerName");
//                System.out.println("name = " +name);
                list.add(name);
            }
            model.addAttribute("nameList", list);
            model.addAttribute("keyword", keyword);

        }
    }

    @GetMapping("sub3")
    public void method3(@RequestParam(value = "st", defaultValue = "name1") String searchType,
                        @RequestParam(value = "k", defaultValue = "") String keyword,
                        Model model) throws SQLException {
        String sql = """
                SELECT * FROM customers
                WHERE
                """;

        if (searchType.equals("name1")) {
            sql += "customerName LIKE ?";
        } else if (searchType.equals("name2")) {
            sql += "contactName LIKE ?";
        }

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1,"%"+ keyword +"%");

        ResultSet resultSet = statement.executeQuery();

        List<Map<String, Object>> list = new ArrayList<>();
        try (connection; statement; resultSet) {
            while (resultSet.next()) {
                String customerName = resultSet.getString("customerName");
                String contactName = resultSet.getString("contactName");

                list.add(Map.of("customerName", customerName, "contactName", contactName));
            }
            model.addAttribute("searchType", searchType);
            model.addAttribute("keyword", keyword);
            model.addAttribute("customers", list);
        }
    }

    @GetMapping("sub4")
    public void method4(@RequestParam(value = "t", defaultValue = "lname") String searchType,
                        @RequestParam(value = "k", defaultValue = "") String keyword,
                        Model model) throws SQLException {
        String sql = """
                SELECT * FROM employees
                WHERE 
                """;

        if (searchType.equals("lname")) {
            sql += "lastName LIKE ?";
        } else if (searchType.equals("fname")) {
            sql += "firstName LIKE ?";
        } else if (searchType.equals("note")) {
            sql += "Notes LIKE ?";
        }

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "%"+ keyword +"%");

        ResultSet resultSet = statement.executeQuery();

        List<Map<String, Object>> list = new ArrayList<>();
        try (connection; statement; resultSet) {
            while (resultSet.next()) {
                String lastName = resultSet.getString("LastName");
                String firstName = resultSet.getString("FirstName");
                String notes = resultSet.getString("Notes");

                list.add(Map.of("lastName", lastName, "firstName", firstName, "notes", notes));
            }
            model.addAttribute("searchType", searchType);
            model.addAttribute("keyword", keyword);
            model.addAttribute("employees", list);
        }
    }

}
