package com.example.spring230920.controller;

import com.example.spring230920.dao.MyDao8;
import com.example.spring230920.domain.MyDto33Employee;
import com.example.spring230920.domain.MyDto41;
import com.example.spring230920.domain.MyDto45;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import software.amazon.awssdk.services.s3.endpoints.internal.Value;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main38")
@RequiredArgsConstructor
public class Controller38 {

    private final MyDao8 dao;

    @GetMapping("sub0")
    public void method0() {

    }

    /*
    axios.get("/main38/sub1")
     */
    @GetMapping("sub1")
    @ResponseBody
    public String method1() {

        return "/main38/sub1";
    }

    /*
    axios.get("/main38/sub2")
     */
    @GetMapping("sub2")
    @ResponseBody
    public String method2() {
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        return "hello world";
    }

    /*
    axios.get("/main38/sub3")
     */
    @GetMapping("sub3")
    @ResponseBody
    public Map<String, Object> method3() {
        return Map.of("name", "son",
                "age", 30);
    }

    /*
    axios.get("/main38/sub4")
     */
    @GetMapping("sub4")
    @ResponseBody
    public Map<String, Object> method4() {
        //{"city": "seoul", "price": 3000,
        //  "List": ["son", "lee", "kim"], "birth": "1999-03-03"}
        return Map.of("city", "seoul",
                "price", 3000,
                "List", List.of("son", "lee", "kim"),
                "birth", "1999-03-03");
    }

    /*
    axios.get("/main38/sub5?id=8")
     */
    @ResponseBody
    @GetMapping("sub5")
    public Map<String , Object> method5(Integer id) {
        return dao.selectProductById(id);
    }

    /*
    axios.get("/main38/sub6?id=7")
     */
    @GetMapping("sub6")
    @ResponseBody
    public MyDto33Employee method6(Integer id) {
        return dao.selectByEmployeeId(id);
    }

    /*
    axios.get("/main38/sub7?id=33")
    33번 상품의 정보를 json으로 응답
    id, price, category, unit
     */
    @GetMapping("sub7")
    @ResponseBody
    public MyDto45 method7(Integer id) {
        return dao.selectProductById2(id);
    }
}
