package com.example.spring230920.controller;

import com.example.spring230920.dao.MyDao6;
import com.example.spring230920.domain.MyDto37;
import com.example.spring230920.domain.MyDto38;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {

    private final MyDao6 dao;

    @GetMapping("sub1")
    public void method1(MyDto37 dto) {
        dao.insert1(dto);

        System.out.println("dto = " + dto);
    }

    @GetMapping("sub2")
    public void method2(MyDto38 dto) {
        dao.insert2(dto); // 직원테이블에 lastname입력

        System.out.println("dto = " + dto); // 새 직원의 번호(pk)와 lastname 출력
    }

    @GetMapping("sub3")
    public void method3() {

    }

    @PostMapping("sub4")
    public String method4(MyDto38 dto, RedirectAttributes rttr) {

        dao.insert3(dto);

        rttr.addFlashAttribute("message", dto.getEid()+"번 등록 되었습니다");

        return "redirect:/main32/sub3";
    }

    @GetMapping("sub5")
    public void method5() {
        try {
            tx1();
        } finally {
            System.out.println("dao.select3() = " + dao.select3());
        }
    }
    @Transactional
    public void tx1() {
        dao.update1();
        int c = 1 / 0; //runtime Exception
        dao.update2();

    }
}
