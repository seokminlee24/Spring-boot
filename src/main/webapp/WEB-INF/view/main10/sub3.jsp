<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-09-26
  Time: 오전 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${computer.id}</p>
<p>${computer.name}</p>

<%--<p>${computer.type}</p>--%>
<p>${computer.model}</p>

<p>${computer.isExpired()}</p>
<p>${computer.expired}</p> <%--더 자주 사용되는 문법--%>
</body>
</html>
