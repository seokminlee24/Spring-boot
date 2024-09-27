package com.example.java.dto.c14;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.List;

@AllArgsConstructor
@Getter
public class Actor {
    private String name;
    private String agency;
    private String birth;
    private String mbti;
    private List<String> works;
}
