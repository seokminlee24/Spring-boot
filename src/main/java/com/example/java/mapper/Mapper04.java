package com.example.java.mapper;

import com.example.java.dto.c34.*;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper04 {
    @Select("""
            SELECT ProductName 
            FROM Products
            WHERE ProductID = 1
            """)
    String ProductName();

    @Select("""
            SELECT ProductName
            FROM Products
            WHERE ProductID = 1
            """)
    /*@Insert()
    @Delete()
    @Update()*/
    String select2();

    @Select("""
            SELECT Price
            FROM Products
            WHERE ProductID = 1
            """)
    String select3();

    @Select("""
            SELECT Price
            FROM Products
            WHERE ProductID = 1
            """)
    Double select4();

    @Select("""
            SELECT LastName FROM 
            w3schools.Employees
            WHERE EmployeeID = 1
            """)
    String select5();

    @Select("""
            SELECT CategoryID FROM 
            w3schools.Products
            WHERE ProductID = 2
            """)
    String select6();

    @Select("""
            SELECT BirthDate 
            FROM w3schools.Employees 
            WHERE EmployeeID = 2
            """)
    LocalDate select7();

    @Select("""
            SELECT Country 
            FROM Customers
            WHERE CustomerID
            """)
    List<String> select8();

    @Select("""
            SELECT LastName 
            FROM Employees
            WHERE EmployeeID
            """)
    List<String> select9();

    @Select("""
            SELECT BirthDate 
            FROM Employees
            WHERE EmployeeID
            """)
    List<LocalDate> select10();

    @Select("""
            SELECT Price
            FROM Products
            ORDER BY Price DESC 
            LIMIT 5
            """)
    List<Double> select11();

    @Select("""
            SELECT CustomerName,City,Country 
            FROM Customers
            where CustomerID = 1
            """)
    Map<String, String> select12();

    @Select("""
            SELECT CustomerName 이름,City 도시,Country 국가
            FROM w3schools.Customers
            WHERE CustomerID = 1
            """)
    Map<String, String> select13();

    @Select("""
                    SELECT ProductName , Price, CategoryID  
                    FROM w3schools.Products
                    WHERE ProductID = 1
            """)
    Map<String, Object> select14();


    @Select("""
            SELECT CONCAT(FirstName, ' ', LastName) 이름, BirthDate birth
            FROM w3schools.Employees
            WHERE EmployeeID = 1
            """)
    Map<String, Object> select15();

    @Select("""
            SELECT CustomerName name, Address address, PostalCode post
            FROM w3schools.Customers
            WHERE CustomerID = 3
            """)
    Map<String, Object> select16();

    @Select("""
            SELECT CustomerName name, Address address, PostalCode post
            FROM Customers
            WHERE CustomerId = 3
            """)
    Customer select17();

    @Select("""
            SELECT ProductId id, ProductName name, Price price
            FROM Products
            WHERE ProductId = 1
            """)
    Product select18();

    @Select("""
            SELECT CONCAT(FirstName, ' ', LastName) name ,BirthDate birth 
            FROM Employees
            WHERE EmployeeID = 3
            """)
    Employee select19();

    @Select("""
            SELECT SupplierID id, SupplierName name, Phone phone
            FROM w3schools.Suppliers
            WHERE SupplierID = 2
            """)
    Supplier select20();

    @Select("""
            SELECT OrderID id,OrderDate date,CustomerName name 
            FROM w3schools.Orders
            JOIN w3schools.Customers
            ON Orders.CustomerID = Customers.CustomerID
            WHERE OrderID = 10248
            """)
    Order select21();

    @Select("""
                SELECT CustomerName name, Address address, PostalCode post 
                FROM w3schools.Customers
                LIMIT 3;
            """)
    List<Map<String, String>> select22();

    @Select("""
            SELECT ProductName  pName,CategoryName cName,Unit unit, Price price 
            FROM w3schools.Products
            JOIN w3schools.Categories
            ON Products.CategoryID = Categories.CategoryID
            ORDER BY Price DESC
            LIMIT 5;
            """)
    List<Map<String, Object>> select23();

    @Select("""
            SELECT ProductName, Quantity, Price 
            FROM Orders o JOIN OrderDetails od ON o.OrderId = od.OrderId
                          JOIN Products p ON od.ProductId = p.ProductId
            WHERE o.OrderId = 10248
            """)
    List<Map<String, Object>> select24();

    @Select("""
            SELECT CONCAT(FirstName, ' ', LastName) name, BirthDate birth
            FROM Employees
            """)
    List<Employee> select25();

    @Select("""
            SELECT SupplierID id,SupplierName name,Phone phone 
            FROM w3schools.Suppliers
            WHERE Country = 'USA'
            """)
    List<Supplier> select26();

    @Select("""
            SELECT OrderID id,OrderDate date, CustomerName name
            FROM w3schools.Orders o
            JOIN w3schools.Customers c ON o.CustomerID = c.CustomerID
            WHERE o.OrderDate BETWEEN '1996-07-1' AND '1996-07-31'
            """)
    List<Order> select27();
}
