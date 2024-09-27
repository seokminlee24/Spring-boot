<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${datas}" var="data">
    <div style="border: 1px solid black">
        <c:forEach items="${data}" var="entry">
            <div style="margin: 30px;">
                <p>${entry.key}</p>
                <p>${entry.value}</p>
            </div>
        </c:forEach>
    </div>
</c:forEach>

<%-- 코드 작성 --%>
<c:forEach items="${players}" var="map">
    <div style="border: 1px solid blue">
        <c:forEach items="${map}" var="player">
            <div style="margin: 30px">
                <p>${player.key} : ${player.value}</p>
            </div>
        </c:forEach>
    </div>
</c:forEach>
</body>
</html>
