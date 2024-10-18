package com.example.java.controller;

import com.example.java.dto.c34.*;
import com.example.java.mapper.Mapper03;
import com.example.java.mapper.Mapper04;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
@Mapper
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {
    final Mapper04 mapper04;

    @GetMapping("sub1")
    public void sub1() {
        String name = mapper04.ProductName();
        System.out.println("name = " + name);
    }

    @GetMapping("sub2")
    public void sub2() {
        String name = mapper04.select2();
        System.out.println("name = " + name);

        String price = mapper04.select3();
        System.out.println("price = " + price);

        Double adsdad = mapper04.select4();
        System.out.println("adsdad = " + adsdad);

        // 1번 직원의 LastName 조회
        String n1 = mapper04.select5();
        System.out.println("n1 = " + n1);

        // 2번 상품의 CategoryId 조회
        String CategoryId = mapper04.select6();
        System.out.println("CategoryId = " + CategoryId);

        // 2번 직원의 생일 조회
        LocalDate birth = mapper04.select7();
        System.out.println("birth = " + birth);
    }

    @GetMapping("sub3")
    public void sub3() {
        List<String> list1 = mapper04.select8();
        list1.forEach(System.out::println);
        System.out.println("==================");

        // 모든 직원의 LastName을 조회해서 출력
        // select9
        List<String> list2 = mapper04.select9();
        list2.forEach(System.out::println);
        System.out.println("=========================");

        // 모든 직원의 BirthDate을 조회해서 출력
        // select10
        List<LocalDate> list3 = mapper04.select10();
        list3.forEach(System.out::println);
        System.out.println("=========================");

        // 가장 비싼 상품의 가격들 5개만 조회해서 출력
        // select11
        List<Double> list4 = mapper04.select11();
        list4.forEach(System.out::println);
    }

    @GetMapping("sub4")
    public void sub4() {
        // 1행 1열
        // 여러행 1열

        //1행 여러열
        Map<String, String> result = mapper04.select12();
        System.out.println(result);

        Map<String, String> result1 = mapper04.select13();
        System.out.println(result1);

        Map<String, Object> result2 = mapper04.select14();
        System.out.println(result2);

        // select15
        // 1번 직원의 이름, 생일 조회
        Map<String, Object> result3 = mapper04.select15();
        System.out.println(result3);

        // select16
        // 3번고객의 이름, 주소, 우편번호 조회
        Map<String, Object> result4 = mapper04.select16();
        System.out.println(result4);
    }

    @GetMapping("sub5")
    public void sub5() {
        // 1행 여러열
        Customer c = mapper04.select17();
        System.out.println("c = " + c);

        Product p = mapper04.select18();
        System.out.println("p = " + p);

        // 3번 직원의 이름과 생일 조회/출력
        // select19, dto
        Employee e = mapper04.select19();
        System.out.println("e = " + e);

        // 2번 공급자의 id, 이름, 전화번호 조회/출력
        // select20, dto
        Supplier s = mapper04.select20();
        System.out.println("s = " + s);

        // 10248번 주문의 주문일, 고객명 조회/출력
        // select21, dto
        Order o = mapper04.select21();
        System.out.println("o = " + o);
    }

    @GetMapping("sub6")
    public void sub6() {
        // 여러행 여러열 -> List<MAP>
        List<Map<String, String>> r1 = mapper04.select22();
        r1.forEach(System.out::println);

        //가장 비싼 상품 5개의 상품명, 카테고리명, 단위, 가격 조회/출력
        //select23
        List<Map<String, Object>> r2 = mapper04.select23();
        r2.forEach(System.out::println);

        //10248 주문의 상품과 수량, 가격 조회/출력
        //select24
        List<Map<String, Object>> r3 = mapper04.select24();
        r3.forEach(System.out::println);
    }

    @GetMapping("sub7")
    public void sub7() {
        // 여러행 여러열 -> List<Dto>

        // 직원의 이름과 생일 조회/출력
        //select25, Employee
        List<Employee> employees = mapper04.select25();
        employees.forEach(System.out::println);


        // USA에 있는 공급자의 id, 이름, 전화번호 조회/ 출력
        // select26, Supplier
        mapper04.select26().forEach(System.out::println);

        // 1996년 7월 주문의 주문일, 고객명 조회/ 출력
        // select27, Order
        List<Order> orders = mapper04.select27();
        orders.forEach(System.out::println);

    }
}
