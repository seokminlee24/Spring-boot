package com.example.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/main13")
public class Controller13 {

    @RequestMapping("sub1")
    public String sub1(Model model) {
        model.addAttribute("attr1", "hello model attribute");
        return null;
    }

    @RequestMapping("sub2")
    public String sub2(Model model) {
        return null;
    }

    @RequestMapping("sub3")
    public String sub3(Model model) {
        return null;
    }

    @RequestMapping("sub4")
    public String sub4(Model model) {
        return null;
    }

    @RequestMapping("sub5")
    public String sub5(Model model) {
        return null;
    }

    @RequestMapping("sub6")
    public String sub6(Model model) {
        model.addAttribute("products", List.of("피자", "라면", "돈까스", "콜라"));
        model.addAttribute("players", List.of("오타니", "흥민", "범근", "케인", "지성"));
        model.addAttribute("cityList", List.of("서울", "제주", "부산", "런던", "ny", "la"));
        return null;
    }

    @RequestMapping("sub7")
    public String sub7(Model model) {
        model.addAttribute("people",
                Map.of("kim", "seoul",
                        "lee", "busan",
                        "choi", "jeju",
                        "park", "ulsan"));

        model.addAttribute("players", Map.of(
                "messi", "아르헨티나",
                "faker", "t1",
                "음바페", "레알",
                "손흥민", "토트넘"));

        model.addAttribute("food",
                Map.of("초코릿", "가나",
                        "탄산", "코카콜라",
                        "버거", "빅맥",
                        "피자", "하와이안"));
        return null;
    }

    @RequestMapping("sub8")
    public String sub8(Model model) {
        model.addAttribute("datas",
                List.of(Map.of(
                                "marvel", "avengers",
                                "dc", "batman",
                                "sony", "spiderman"
                        ),
                        Map.of(
                                "show", "오징어게임",
                                "darama", "무빙",
                                "film", "조커"
                        )));
        model.addAttribute("players",
                List.of(
                        Map.of(
                                "손흥민", "공격수",
                                "이강인", "미드필더",
                                "김민재", "수비수"
                        ),
                        Map.of(
                                "해리 케인", "공격수",
                                "포든", "미드필더",
                                "조던", "골키퍼"
                        )
                ));

        return null;
    }

    @RequestMapping("sub9")
    public void method9(Model model) {
        model.addAttribute("data",
                Map.of("foods", List.of("피자", "버거", "국밥", "파전"),
                        "coffees", List.of("아메", "라떼", "모카")));

        model.addAttribute("movies",
                Map.of("marvel", List.of("ironman", "captain", "panther"),
                        "dc", List.of("superman", "joker", "batman")));

    }

    
}
