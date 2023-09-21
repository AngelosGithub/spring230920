package com.example.spring230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main7")
public class Controller07 {

    // (RequestMapping) Handler Method

    @RequestMapping("sub1")
    public String method1() {
        System.out.println("Controller07.method1");

        return "view1";
    }

    @RequestMapping("sub2")
    public String method2() {
        System.out.println("Controller07.method2");

        return "html2";
    }
    // void return : 요청경로가 view name 이 됨
    // 요청경로 /main7/sub3
    // view name /main7/sub3
    @RequestMapping("sub3")
    public void method3() {
        System.out.println("Controller07.method3");
    }

    @RequestMapping("sub4")
    public String method4() {
        return "/main7/html4";
    }

    @RequestMapping("sub5")
    public void method5() {

    }
}
