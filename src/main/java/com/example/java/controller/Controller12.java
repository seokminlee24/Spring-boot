package com.example.java.controller;

import com.example.java.dto.c12.Book;
import com.example.java.dto.c12.Car;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/main12")
public class Controller12 {
    @RequestMapping("sub1")
    public String sub1(Model model) {
        Book book = new Book();
        book.setAuthor("linus");
        book.setPrice(500);
        book.setTitle("git");

        Book book2 = new Book("java", "shin", 600);

        model.addAttribute("books", List.of(book, book2));
        return null;
    }

    @RequestMapping("")
    public String sub2(Model model) {
        Car car = new Car();

        car.setMake("tesla");
        car.setYear(2024);
        car.setModel("truck");

        car.getMake();
        car.getYear();
        car.getModel();

        System.out.println(car);

        return null;
    }

    @RequestMapping("sub3")
    public String sub3(Model model) {
        model.addAttribute("num1", 99);
        model.addAttribute("num2", 88);
        model.addAttribute("num1", 77);
        return null;
    }
}
