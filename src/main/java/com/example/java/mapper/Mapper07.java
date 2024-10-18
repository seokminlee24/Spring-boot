package com.example.java.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper07 {
    @Select("""
            SELECT *    FROM w3schools.Customers
            """)
    List<Map<String, Object>> select1();

    @Delete("""
            DELETE FROM
            w3schools.Customers
            WHERE CustomerID = #{id}
            """)
    int delete1(Integer id);

    @Delete("""
            DELETE FROM w3schools.Products
            WHERE ProductID = #{id}
            """)
    int delete2(Integer id);

    @Insert("""
            INSERT INTO Customers
            (CustomerName, City, Country)
            VALUES (#{name}, #{city}, #{country})
            """)
    int insert1(String name, String city, String country);

    @Insert("""
            INSERT INTO w3schools.Products 
            (ProductName, Price)
            VALUES (#{name}, #{price})
            """)
    int insert2(String name, Double price);

    @Select("""
            SELECT CustomerId id, CustomerName name, City city, Country country
                        FROM Customers
                        ORDER BY id DESC
                        LIMIT 10
            """)
    List<Map<String, Object>> select2();

    @Select("""
            SELECT ProductID id,ProductName name, Price price
            FROM w3schools.Products
            ORDER BY id DESC
            LIMIT 10;
            """)
    List<Map<String, Double>> productSelect();
}
