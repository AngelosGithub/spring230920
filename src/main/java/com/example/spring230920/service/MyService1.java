package com.example.spring230920.service;

import com.example.spring230920.dao.MyDao6;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class MyService1 {
    private final MyDao6 dao;

    @Transactional
    public void tx1() {
        dao.update1();

//        int c = 1 / 0; // runtimeException

        dao.update2();
    }
}
