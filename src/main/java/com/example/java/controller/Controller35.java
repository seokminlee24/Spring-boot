package com.example.java.controller;

import com.example.java.mapper.Mapper02;
import com.example.java.mapper.Mapper05;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main35")
public class Controller35 {
    private final Mapper05 mapper05;

    @GetMapping("sub1")
    public void sub1() {
        mapper05.select1().forEach(System.out::println);
    }

    @GetMapping("sub2")
    public void sub2() {
        mapper05.select1().forEach(System.out::println);
    }
}
