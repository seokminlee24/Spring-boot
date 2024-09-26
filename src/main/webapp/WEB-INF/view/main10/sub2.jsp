<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-09-26
  Time: 오전 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${hCar.getModel()}</p>
<p>${hCar["company"]}</p>
<p>${hCar.price}</p>
<hr>
<p>${tCar.model}</p>
<p>${tCar.company}</p>
<p>${tCar.price}</p>
</body>
</html>
