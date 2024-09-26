package com.example.java.dto.c12;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

//@AllArgsConstructor //모든 아규먼트 를 받는 생성자
//@NoArgsConstructor  //아규먼트 없는 생성자
@RequiredArgsConstructor // final 필드 받는 생성자
public class Player {

    private final int age;
    private final String name;
    private final boolean married;

}
