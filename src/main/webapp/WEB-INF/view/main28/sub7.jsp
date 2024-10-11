<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: skyblue">${message}</h5>
</c:if>
<h3>상품 조회</h3>
<form action="">
    <input type="number" placeholder="상품번호" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${not empty product}">
    <div>
        <input type="text" readonly="" value="${product.id}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.name}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.supplier}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.category}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.unit}">
    </div>
    <div>
        <input type="text" readonly="" value="${product.price}">
    </div>
    <div>
        <form action="/main28/sub8" method="post">
            <input type="text" name="id" value="${product.id}">
            <button style="background-color: red; color: white">삭제</button>
        </form>
    </div>
</c:if>
<c:if test="${empty product}">
    <h3>해당 번호의 고객이 존재하지 않습니다.</h3>
</c:if>
</body>
</html>
