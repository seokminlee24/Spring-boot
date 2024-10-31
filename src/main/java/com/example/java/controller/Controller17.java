package com.example.java.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/main17")
public class Controller17 {
    //Controller16,sub3,sub4,sub5,sub9가 하는일 작성
    @RequestMapping("sub1")
    public void sub1(Model model, HttpSession session) {

    }

    @RequestMapping("sub2")
    public void sub2(Model model, HttpSession session) {

    }

    @RequestMapping("sub3")
    public void sub3(@RequestParam(value = "id", required = false) String id,
                     Model model, HttpSession session) {
        if (id != null && !id.isEmpty()) {
            System.out.println("id = " + id);
            System.out.println("userId = " + id);
        }
    }

    @RequestMapping("sub5")
    public String sub5(Model model, HttpSession session) {
        session.invalidate();
        return "redirect:/main17/sub3";
    }

}
