package com.example.spring230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main12")
public class Controller12 {
    @RequestMapping("sub1")
    public void method1() {

    }

    @RequestMapping("asub2/bsub2/csub2/dsub2/esuv2")
    public void method2() {

    }

    @RequestMapping("sub3")
    public void method3() {

    }

    @RequestMapping("sub4")
    public void method4(
            String name,
            Integer age,
            Model model
    ) {
        System.out.println("Controller12.method4");
        System.out.println(name+"과"+age+"저장");

        model.addAttribute("message", (name+"과"+age+"저장"));
    }

    @RequestMapping("sub5")
    public void method5() {

    }

    @RequestMapping("sub6")
    public void method6(String p, Model model) {
        System.out.println(p + " 검색 결과 입니다");

        model.addAttribute("search", (p + " 검색 결과 입니다"));
    }
}
