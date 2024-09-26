<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-09-26
  Time: 오전 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${person["name"]}</p>
<p>${person["address"]}</p>
<p>${person["email"]}</p>
<%--키가 자바 변수명 작성 큐칙(영문대소소문자,숫자,_,$)에 맞다면.키 사용 카능--%>
<p>${person.name}</p>
<p>${person.address}</p>
</body>
</html>
