<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-09-25
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--jsp 주석--%>
    <!--html 주석-->

    <%--
        단축키 ctrl + /
    --%>
    <p>${countries[0]}</p> <%--배열인덱스로 문자열 사용 가능--%>
    <p>${countries[1]}</p>
    <p>${countries[2]}</p>
    <hr>
    <p>${islands[0]}</p>
    <p>${islands[1]}</p>
    <p>${islands[2]}</p>
    <hr>
    <p>${points[0]}</p>
    <p>${points[1]}</p>
    <p>${points[2]}</p>

</body>
</html>
