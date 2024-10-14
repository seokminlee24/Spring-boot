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
<h3>새 책 입력</h3>
<form action="/main29/sub8" method="post">
    <div>
        <span>isbn</span>
        <input type="number" name="isbn" size="13">
    </div>
    <div>
        <span>제목</span>
        <input type="text" name="title">
    </div>
    <div>
        <span>저자</span>
        <input type="text" name="author">
    </div>
    <div>
        <span>가격</span>
        <input type="number" name="price" step="1">
        원
    </div>
    <div>
        <span>출판일</span>
        <input type="date" name="publishing">
    </div>
    <div>
        <button>전송</button>
    </div>
</form>
</body>
</html>
