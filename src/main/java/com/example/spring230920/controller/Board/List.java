package com.example.spring230920.controller.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;

@Controller
@RequestMapping("mainList")
public class List {
    @Autowired
    private DataSource dataSource;


}
