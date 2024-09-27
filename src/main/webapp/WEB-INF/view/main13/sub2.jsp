<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>/main13/sub2</p>
<%--
JSTL : JSP Standard Tag Library
반복된 코드실행
출력여부
--%>

<%--
if
--%>
<c:if test="false">
    <p>출력이 될까?</p>
</c:if>
<c:if test="${param.g == '남자'}">
    <p>남자입니다</p>
</c:if>
<c:if test="${param.g == '여자'}">
    <p>남자입니다</p>
</c:if>

<hr>

<c:if test="${param.age < 13}">
    <p>어린이용 컨텐트</p>
</c:if>
<c:if test="${13 <= param.age && param.age < 20}">
    <p>청소년용 컨텐츠</p>
</c:if>

<c:if test="${param.age >= 20}">
    <p>성인용 컨텐츠</p>
</c:if>

<hr>

<%--request parameter 'contry'의 값에 따라 다른 요소 출력--%>
<%--
contry 가 uk 이면
--%>
<c:if test="${param.contry == 'uk'}">
    <p>해리 케인</p>
</c:if>


<%--
country 가 jp 이면
--%>
<c:if test="${param.contry == 'jp'}">
    <p>오타니</p>
</c:if>

<%--
country 가 kr 이면
--%>
<c:if test="${param.contry == 'kr'}">
    <p>손흥민</p>
</c:if>

</body>
</html>
