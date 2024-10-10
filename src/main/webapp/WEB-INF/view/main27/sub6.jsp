<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .active {
        }
    </style>
</head>
<body>
<h3>최신 주문 목록(페이징)</h3>
<table>
    <thead>
    <tr>
        <th>주분번호</th>
        <th>고객번호</th>
        <th>직원번호</th>
        <th>주문날짜</th>
        <th>화주 번호</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderList}" var="order">
        <tr>
            <td>${order.orderID}</td>
            <td>${order.customerID}</td>
            <td>${order.employeeID}</td>
            <td>${order.orderDate}</td>
            <td>${order.shipperId}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div style="margin: 10px;">
    <c:if test="${currentPageNumber > 1}">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="1"/>
        </c:url>
        <a href="${pageLink}">&lt;&lt;맨처음</a>
    </c:if>
    <c:url value="/main27/sub6" var="pageLink">
        <c:param name="page" value="${prevPageNumber}"/>
    </c:url>
    <a href="${pageLink}">&lt; 이전</a>
    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <span class="${currentPageNumber == pageNumber ? 'active' : ''}">
        <a href="${pageLink}">${pageNumber}</a>
        </span>
    </c:forEach>
    <c:url value="/main27/sub6" var="pageLink">
        <c:param name="page" value="${nextPageNumber}"/>
    </c:url>
    <a href="${pageLink}">다음 &gt;</a>
</div>
</body>
</html>
