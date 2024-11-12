package com.example.java.api;

import com.example.java.dto.a1.Book;
import com.example.java.dto.a1.Person;
import com.example.java.dto.a1.Player;
import com.example.java.dto.a1.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/api/main2")
public class ApiController2 {

    @PostMapping("sub7")
    public void method7(@RequestBody List<Book> books) {
        System.out.println(books);
    }

    @PostMapping("sub6")
    public void sub5(@RequestBody List<Person> people) {
        System.out.println(people);
    }

    @PostMapping("sub5")
    public void method5(@RequestBody List<String> items) {
        System.out.println(items);
    }

    @PostMapping("sub4")
    public void sub4(@RequestBody Product product) {
        System.out.println(product);
    }

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
