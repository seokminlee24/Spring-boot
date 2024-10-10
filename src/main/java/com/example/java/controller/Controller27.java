package com.example.java.controller;

import com.example.java.dto.c26.Customer;
import com.example.java.dto.c26.Product;
import com.example.java.dto.c27.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main27")
public class Controller27 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub1(String id, Model model) throws SQLException {
        // SQL injection
        String sql = STR."""
                SELECT *
                FROM Customers
                WHERE CustomerId = \{id}
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (conn; stmt; rs) {
            List<Customer> list = new ArrayList<>();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setPostalCode(rs.getString("PostalCode"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContact(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setId(rs.getString("CustomerId"));
                customer.setCountry(rs.getString("Country"));
                list.add(customer);
            }
            model.addAttribute("customerList", list);
        }
    }

    @GetMapping("sub2")
    public String sub2(String id, Model model) throws SQLException {
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerId = ?
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        ResultSet rs = pstmt.executeQuery();
        try (conn; pstmt; rs) {
            List<Customer> list = new ArrayList<>();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setPostalCode(rs.getString("PostalCode"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContact(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setCountry(rs.getString("Country"));
                customer.setId(rs.getString("CustomerId"));
                list.add(customer);
            }
            model.addAttribute("customerList", list);
        }

        return "/main27/sub1";
    }

    // /main26/sub5
    // /main27/sub3
    @GetMapping("sub3")
    public String sub3(Model model, String min, String max) throws SQLException {
        String sql = """
                SELECT *
                FROM Products
                WHERE Price BETWEEN ? AND ?
                ORDER BY Price
                """;
        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, min);
        pstmt.setString(2, max);
        ResultSet rs = pstmt.executeQuery();

        try (con; pstmt; rs) {
            List<Product> products = new ArrayList<>();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getString("ProductID"));
                product.setName(rs.getString("ProductName"));
                product.setCategory(rs.getString("CategoryID"));
                product.setSupplier(rs.getString("SupplierID"));
                product.setUnit(rs.getString("Unit"));
                product.setPrice(rs.getString("Price"));

                products.add(product);
            }
            model.addAttribute("productList", products);

            return "/main26/sub5";
        }
    }

    @GetMapping("sub4")
    public void sub4(Model model, String begin, String end) throws SQLException {
        String sql = """
                SELECT *
                FROM Orders
                WHERE OrderDate BETWEEN ? AND ?
                ORDER BY OrderDate
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, begin);
        pstmt.setString(2, end);
        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs) {
            List<Order> list = new ArrayList<>();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderID(rs.getString("OrderID"));
                order.setOrderDate(rs.getString("OrderDate"));
                order.setCustomerID(rs.getString("CustomerID"));
                order.setEmployeeID(rs.getString("EmployeeID"));
                order.setShipperId(rs.getString("ShipperID"));
                list.add(order);
            }
            model.addAttribute("orderList", list);
        }
    }

    @GetMapping("sub5")
    public void sub5(Model model,
                     @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
                     @RequestParam(value = "page_count", defaultValue = "10") Integer pageCount) throws SQLException {
        // 총 레코드 수 조회
        String numberOfRowSQL = """
                SELECT COUNT(*)
                FROM Customers
                """;
        Connection conn2 = dataSource.getConnection();
        PreparedStatement pstmt2 = conn2.prepareStatement(numberOfRowSQL);
        ResultSet rs2 = pstmt2.executeQuery();
        try (conn2; pstmt2; rs2;) {
            // 총 레코드 수
            Integer numberOfRows = rs2.next() ? rs2.getInt(1) : 0;
            // 마지막 페이지 번호
            Integer lastPageNumber = (numberOfRows - 1) / pageCount + 1;

            model.addAttribute("lastPageNumber", lastPageNumber);

            //현재 페이지 번호
            model.addAttribute("currentPageNumber", pageNumber);
            //페이지 번호의 끝(맨 오른쪽)값 (10개씩 보여줄떄)
            Integer endPageNumber = ((pageNumber - 1) / 10 + 1) * 10;
            // 페이지 번호의 시작(맨 왼쪽)값 (10개씩 보여줄 때)
            Integer beginPageNumber = endPageNumber - 9;

            // 다음버튼 클릭시 사용될 페이지 번호
            Integer nextPageNumber = endPageNumber + 1;
            // 이전버튼 클릭시 사용될 페이지 번호
            Integer prevPageNumber = beginPageNumber - 1;

            model.addAttribute("beginPageNumber", beginPageNumber);
            model.addAttribute("endPageNumber", Math.min(endPageNumber, lastPageNumber));
            if (nextPageNumber <= lastPageNumber) {
                model.addAttribute("nextPageNumber", nextPageNumber);
            }

            if (prevPageNumber > 0) {
                model.addAttribute("prevPageNumber", prevPageNumber);
            }
        }
        //고객 목록 조회
        String sql = """
                SELECT *
                FROM Customers
                ORDER BY CustomerId
                LIMIT ?,?
                """;
        Integer offset = (pageNumber - 1) * pageCount;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, offset);
        pstmt.setInt(2, pageCount);
        ResultSet rs = pstmt.executeQuery();


        try (conn; pstmt; rs) {
            List<Customer> list = new ArrayList<>();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerId"));
                customer.setName(rs.getString("CustomerName"));
                customer.setContact(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setCountry(rs.getString("Country"));
                customer.setPostalCode(rs.getString("PostalCode"));
                list.add(customer);
            }
            model.addAttribute("customerList", list);
        }
    }

    // 6번째 메소드
    // 최신 주문 순 (ORDER BY OrderID DESC)
    // 각 페이지에 20개씩 주문이 조회되는 코드 작성

    // 마지막 페이지 구해서 Model로 넘겨주고
    // jsp에서 마지막 페이지 번호까지 출력

    // 페이지 번호 나열하고 페이징 하기

    // 이전 버튼, 다음 버튼 만들기
    //

    //
    @GetMapping("sub6")
    public void sub6(Model model,
                     @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
                     @RequestParam(value = "page_count", defaultValue = "20") Integer pageCount) throws SQLException {
        //총레코드 수
        String numberOfRowsSQL = """
                SELECT COUNT(*)
                FROM Orders
                """;
        Connection conn2 = dataSource.getConnection();
        PreparedStatement pstmt2 = conn2.prepareStatement(numberOfRowsSQL);
        ResultSet rs2 = pstmt2.executeQuery();
        try (conn2; pstmt2; rs2;) {
            Integer numberOfRows = rs2.next() ? rs2.getInt(1) : 0;
            Integer lastPageNumber = (numberOfRows - 1) / pageCount + 1;
            model.addAttribute("lastPageNumber", lastPageNumber);

            //현재 페이지 번호
            model.addAttribute("currentPageNumber", pageNumber);
            //페이지 번호의 끝(맨 오른쪽)값 (10개씩 보여줄떄)
            Integer endPageNumber = ((pageNumber - 1) / 10 + 1) * 10;
            Integer beginPageNumber = endPageNumber - 9;
            Integer nextPageNumber = endPageNumber + 1;
            Integer prevPageNumber = beginPageNumber - 1;


            model.addAttribute("beginPageNumber", beginPageNumber);

            model.addAttribute("endPageNumber", Math.min(endPageNumber, lastPageNumber));
            if (nextPageNumber <= lastPageNumber) {
                model.addAttribute("nextPageNumber", nextPageNumber);
            }

            if (prevPageNumber > 0) {
                model.addAttribute("prevPageNumber", prevPageNumber);
            }
        }

        String sql = """
                SELECT * FROM Orders
                ORDER BY OrderID DESC
                LIMIT ?,?
                """;
        Integer offset = (pageNumber - 1) * pageCount;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, offset);
        pstmt.setInt(2, pageCount);
        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs) {
            List<Order> list = new ArrayList<>();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderID(rs.getString("OrderID"));
                order.setOrderDate(rs.getString("OrderDate"));
                order.setCustomerID(rs.getString("CustomerID"));
                order.setEmployeeID(rs.getString("EmployeeID"));
                order.setShipperId(rs.getString("ShipperID"));
                list.add(order);
            }
            model.addAttribute("orderList", list);
        }
    }
}
