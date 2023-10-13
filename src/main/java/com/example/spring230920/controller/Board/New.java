package com.example.spring230920.controller.Board;

import com.example.spring230920.controller.domain2.BoardNew;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Controller
@RequestMapping("Board")
public class New {
    @Autowired
    private DataSource dataSource;

    @GetMapping("new1")
    public void new1() {
        
    }

    @PostMapping("new1")
    public String new2(BoardNew boardNew, RedirectAttributes rttr) throws SQLException {
        String new1 = """
                INSERT INTO mydb1.board
                (Name, Title, Content, Created)
                VALUE (?,?,?,?)
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(new1);

        try (connection; statement) {
            statement.setString(1, boardNew.getName());
            statement.setString(2, boardNew.getTitle());
            statement.setString(3, boardNew.getContent());
            statement.setTimestamp(4, Timestamp.valueOf(LocalDateTime.now()));

            int count = statement.executeUpdate();

            if (count ==1) {
                System.out.println("succes");
            } else {
                System.out.println("failed");
            }
        }
        return "redirect:/Board/view1";
    }
}
