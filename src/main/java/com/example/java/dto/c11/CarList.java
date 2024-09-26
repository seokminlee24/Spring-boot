package com.example.java.dto.c11;

public class CarList {
    private String modelName;
    private Integer price;
    private boolean expired;

    public CarList(String modelName, Integer price, boolean expired) {
        this.modelName = modelName;
        this.price = price;
        this.expired = expired;
    }

    public String getModelName() {
        return modelName;
    }

    public Integer getPrice() {
        return price;
    }

    public boolean isExpired() {
        return expired;
    }
}
