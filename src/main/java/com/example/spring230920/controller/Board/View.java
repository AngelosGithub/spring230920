package com.example.spring230920.controller.Board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Board")
public class View {
    @GetMapping("view1")
    public void view1() {

    }
}
