package com.example.spring230920.controller;

import org.eclipse.tags.shaded.org.apache.bcel.generic.GETFIELD;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.*;
import java.time.LocalDate;
import java.util.Map;
import java.util.stream.Stream;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "id", required = false) Integer customerId) throws SQLException {
        if (customerId == null) {
            System.out.println("삭제할 아이디를 넣어주세요");
            return;
        }
        String sql = """
                DELETE FROM customers
                WHERE customerId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement;) {
            statement.setInt(1, customerId);
            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println(rows+ " 개 레코드 잘 지워짐");
            } else {
                System.out.println("지워지지 않음");
            }
        }
    }

    @GetMapping("sub2")
    public void method2() {

    }

    @PostMapping("sub2")
    public void method3(@RequestParam("pid") Integer productId) throws SQLException {
        String sql = """
                DELETE FROM products
                WHERE productID = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setInt(1, productId);

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("지워짐");
            } else {
                System.out.println("문제가 생김");
            }
        }

    }
    @GetMapping("sub4")
    public void method4() throws SQLException {
        String sql = """
                UPDATE shippers
                SET shipperName =?,
                    Phone = ?
                WHERE shipperId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setString(1, "이강인");
            statement.setString(2, "01088889999");
            statement.setInt(3, 1);

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("good");
            } else {
                System.out.println("Bad");
            }
        }
    }

    @GetMapping("sub5")
    public void method5() {

    }

    @PostMapping("sub5")
    public void method6(
            @RequestParam("id") Integer shipperId,
            @RequestParam("name") String shipperName,
            @RequestParam("phone") String phone
    ) throws SQLException {
        String sql = """
                UPDATE shippers
                SET shipperName = ?,
                    Phone = ?
                WHERE shipperId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setString(1, "name");
            statement.setString(2, "phone");
            statement.setInt(3, 1);

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("Good");
            } else {
                System.out.println("no Good");
            }
        }
    }

    @GetMapping("sub7")
    public void method7(@RequestParam(value = "id", required = false) Integer employeeId, Model model) throws SQLException {
        if (employeeId == null) {
            return;
        }

        String sql = """
                SELECT * FROM employees
                WHERE employeeId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setInt(1, employeeId);

            ResultSet resultSet = statement.executeQuery();

            try (resultSet) {
                if (resultSet.next()) {
                    String lastName = resultSet.getString("lastName");
                    String firstName = resultSet.getString("firstName");
                    LocalDate birthDate = resultSet.getTimestamp("birthDate").toLocalDateTime().toLocalDate();
                    String photo = resultSet.getString("photo");
                    String notes = resultSet.getString("notes");

                    model.addAttribute("employee", Map.of("lastName", lastName,
                            "firstName", firstName,
                            "birthDate", birthDate,
                            "photo", photo,
                            "notes", notes,
                            "employeeId", employeeId));
                }
            }
        }
    }

    @PostMapping("sub7")
    public String method8(
            @RequestParam("id") Integer employeeId,
            @RequestParam("lastName") String lastName,
            @RequestParam("firstName") String firstName,
            @RequestParam("birthDate") LocalDate birthDate,
            @RequestParam("photo") String photo,
            @RequestParam("notes") String notes,
            RedirectAttributes rttr
    ) throws SQLException {
        String sql = """
                UPDATE employees
                SET
                    lastName = ?,
                    firstName = ?,
                    birthDate = ?,
                    photo = ?,
                    notes = ?
                WHERE
                    employeeId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setString(1, lastName);
            statement.setString(2, firstName);
            statement.setTimestamp(3, Timestamp.valueOf(birthDate.atStartOfDay()));
            statement.setString(4, photo);
            statement.setString(5, notes);
            statement.setInt(6, employeeId);

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("변경됨");
            } else {
                System.out.println("에러!");
            }

        }

        rttr.addAttribute("id", employeeId);
        return "redirect:/main25/sub7";
    }
}
