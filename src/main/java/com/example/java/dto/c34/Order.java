package com.example.java.dto.c34;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Order {
    private int id;
    private LocalDate date;
    private String name;
}
