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
        <th>성</th>
        <th>이름</th>
        <th>생일</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employeeList}" var="e">
        <tr>
            <td>${e.id}</td>
            <td>${e.first}</td>
            <td>${e.last}</td>
            <td>${e.birth}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
