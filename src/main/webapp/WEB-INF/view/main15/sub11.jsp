<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--/main/sub11?/name=범근--%>
<h1>sub11 contents</h1>

<c:import url="/WEB-INF/view/main15/sub12.jsp">
    <c:param name="name" value="범근"/>
    <c:param name="food" value="피자"/>
    <c:param name="model" value="제네시스"/>
</c:import>


</body>
</html>
