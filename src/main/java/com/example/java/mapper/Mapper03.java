package com.example.java.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper03 {
    @Select("""
            SELECT Description 
            FROM w3schools.Categories
            WHERE CategoryID = 1
            """)
    String selectDescription();
}
