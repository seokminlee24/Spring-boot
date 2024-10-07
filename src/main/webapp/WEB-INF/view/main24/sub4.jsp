<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        td, th {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<table style="border-collapse: collapse; width: 100%;">
    <thead>
    <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>단위</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.unit}</td>
            <td>${p.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
