package com.example.java.controller;

import com.example.java.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Mapper
@RequiredArgsConstructor
@RequestMapping("main33")
public class Controller33 {
    private final Mapper03 mapper03;

    @GetMapping("sub1")
    public void sub1() {
        String name = mapper03.selectDescription();
        System.out.println("name = " + name);
    }
}
