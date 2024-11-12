package com.example.java.dto.a1;

import lombok.Data;

import java.util.List;

@Data
public class Player {
    private String name;
    private Integer age;
    private Boolean married;
    private List<String> item;
    private Team team;
}
