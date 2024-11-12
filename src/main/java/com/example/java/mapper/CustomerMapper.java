package com.example.java.mapper;

import com.example.java.dto.a6.Customer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CustomerMapper {
    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName contact,
                   Address,
                   City,
                   PostalCode,
                   Country
            FROM Customers
            WHERE CustomerID=#{customerID}
            """)
    Customer selectById(Integer customerId);
}
