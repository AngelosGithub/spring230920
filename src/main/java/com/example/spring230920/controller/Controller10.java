package com.example.spring230920.controller;

import com.example.spring230920.domain.MyDto10;
import com.example.spring230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main10")
public class Controller10 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();
        MyDto9 o3 = new MyDto9();

        o1.setFirstName("son");
        o2.setFirstName("lee");
        o3.setFirstName("kim");

        model.addAttribute("students", List.of(o1, o2));
        model.addAttribute("studentList", List.of(o1, o2, o3));
    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();

        o1.setLastName("두식");
        o2.setLastName("봉석");

        model.addAttribute("personMap", Map.of(
                "person1", o1,
                "person2", o2));

        model.addAttribute("people",
                Map.of("1st", o1, "2nd", o2));
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        MyDto10 o1 = new MyDto10();
        o1.setName("doosik");
        o1.setId(3);
        o1.setFoods(List.of("pizza", "burger", "milk"));
        o1.setCars(List.of("BMW", "Audi", "Benz"));

        model.addAttribute("person1", o1);
    }

    @RequestMapping("sub4")
    public void method4(Model model) {
        model.addAttribute("MyList", List.of("tesla", "audi", "benz"));
    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        model.addAttribute("foodList", List.of("pizza", "milk", "burger", "pasta"));
        model.addAttribute("names", List.of("두식", "봉석", "희수", "미현"));
    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        List<MyDto9> list = new ArrayList<>();
        list.add(new MyDto9("31","son","hm","football","010"));
        list.add(new MyDto9("32","lee","ki","paris","020"));
        list.add(new MyDto9("33","kim","ki","paris","020"));
        list.add(new MyDto9("34","han","ki","paris","020"));
        list.add(new MyDto9("35","jin","ki","paris","020"));

        model.addAttribute("moving", list);
    }
}
