package com.example.spring230920.domain;

import lombok.Data;

import java.util.List;

@Data
public class MyDto10 {
    private String name;
    private Integer id;
    private List<String> foods;
    private List<String> cars;
//    = private String[] cars;
}
