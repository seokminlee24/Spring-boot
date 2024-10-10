package com.example.java.dto.c27;

import lombok.Data;

@Data
public class Order {
    private String orderID;
    private String customerID;
    private String employeeID;
    private String orderDate;
    private String shipperId;
}
