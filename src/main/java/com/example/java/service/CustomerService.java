package com.example.java.service;

import com.example.java.dto.a6.Customer;
import com.example.java.dto.a6.Supplier;
import com.example.java.mapper.CustomerMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class CustomerService {
    private final CustomerMapper mapper;


    public Customer getCustomer(Integer customerId) {
        return mapper.selectById(customerId);
    }

    public Supplier getSupplier(Integer supplierId) {

        return mapper.selectSupplierById(supplierId);
    }
}
