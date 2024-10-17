package com.example.java.controller;

import com.example.java.mapper.Mapper01;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main31")
public class Controller31 {
    final Mapper01 mapper01;

    @RequestMapping("sub1")
    public void sub1() {

        // 비즈니스 로직 (crud)
        String name = mapper01.selectName();

        System.out.println("name = " + name);
    }

    @GetMapping("sub2")
    public void sub2() {
        String productName = mapper01.getProductName();
        System.out.println("productName = " + productName);
    }

    @GetMapping("sub3")
    public void sub3() {
        // 3번 직원의 FirstName 조회
        String employeeName = mapper01.getEmployeeName();
        System.out.println("employeeName = " + employeeName);
    }


}
