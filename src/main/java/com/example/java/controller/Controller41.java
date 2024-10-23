package com.example.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main41")
public class Controller41 {

    @GetMapping("sub1")
    public void sub1() {
    }

    @GetMapping("sub2")
    public void sub2() {
    }

    @GetMapping("sub3")
    public void sub3() {
    }
}