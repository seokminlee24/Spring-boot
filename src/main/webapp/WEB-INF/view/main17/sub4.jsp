<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <div>
        <a href="/main17/sub1">블로그</a>
    </div>
    <div>
        <a href="/main17/sub2">카페</a>
    </div>
    <c:if test="${not empty sessionScope.userid}" var="loggedIn">
        <div>
            <a href="/main17/sub5">로그아웃</a>
        </div>
    </c:if>

    <c:if test="${not loggedIn}">
        <div>
            <a href="/main16/sub3">로그인</a>
        </div>
    </c:if>
</div>
</body>
</html>
