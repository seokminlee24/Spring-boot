<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품명 조회</h3>
<form>
    <input type="text" name="q" value="${param.q}">
    <button>검색</button>
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>공급자번호</th>
        <th>카테고리 번호</th>
        <th>단위</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.supplier}</td>
            <td>${product.category}</td>
            <td>${product.unit}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>