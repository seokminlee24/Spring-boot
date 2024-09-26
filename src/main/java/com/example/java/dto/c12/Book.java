package com.example.java.dto.c12;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@ToString

public class Book {
    private String title;
    private String author;
    private Integer price;
}
