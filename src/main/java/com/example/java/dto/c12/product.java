package com.example.java.dto.c12;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class product {
    private int id;
    private String name;
    private int price;
    private int quantity;
    private String description;
}
