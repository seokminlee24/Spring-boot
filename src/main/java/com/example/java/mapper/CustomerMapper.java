package com.example.java.mapper;

import com.example.java.dto.a6.Customer;
import com.example.java.dto.a6.Supplier;
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

    @Select("""
                        SELECT SupplierID id,
                                SupplierName name,
                       ContactName contactName,
                    Address,
                    City,
                    PostalCode,
                    Country,
                    Phon
            FROM Suppliers
                    WHERE SupplierID=#{supplierID}
            
            """)
    Supplier selectBYId(Integer supplierId);

    @Select("""
            SELECT SupplierId id,
                   SupplierName name,
                   ContactName contact,
                   Address,
                   City,
                   PostalCode,
                   Country,
                   Phone
            FROM Suppliers
            WHERE SupplierID=#{supplierID}
            """)
    Supplier selectSupplierById(Integer supplierId);
}
