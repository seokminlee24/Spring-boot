<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>기간별 주문 조회</h3>
<form>
    시작일
    <input type="date" name="begin" value="1996-07-04">
    <br>
    ~
    <br>
    종료일
    <input type="date" name="end" value="1998-05-06">
    <br>
    <button> 조회</button>
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>주분번호</th>
        <th>고객번호</th>
        <th>직원번호</th>
        <th>주문날짜</th>
        <th>화주 번호</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderList}" var="order">
        <tr>
            <td>${order.orderID}</td>
            <td>${order.customerID}</td>
            <td>${order.employeeID}</td>
            <td>${order.orderDate}</td>
            <td>${order.shipperId}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
