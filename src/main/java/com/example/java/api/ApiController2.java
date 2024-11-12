package com.example.java.api;

import com.example.java.dto.a1.Book;
import com.example.java.dto.a1.Person;
import com.example.java.dto.a1.Player;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/api/main2")
public class ApiController2 {

    @PostMapping("sub3")
    public void sub3(@RequestBody Player player) {
        System.out.println(player);
    }

    @PostMapping("sub2")
    public void sub2(@RequestBody Book book) {
        System.out.println(book);
    }

    @PostMapping("sub1")
    public void sub1(@RequestBody Person person) {
        System.out.println(person);
    }

}
