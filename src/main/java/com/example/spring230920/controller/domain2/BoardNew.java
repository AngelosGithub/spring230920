package com.example.spring230920.controller.domain2;

import lombok.Data;

import java.time.LocalDate;

@Data
public class BoardNew {
    private Integer Number;
    private String Name;
    private String title;
    private String content;
    private Integer hitCount;
    private LocalDate created;
}
