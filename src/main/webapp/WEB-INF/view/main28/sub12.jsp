<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: aqua">${message}</h5>
</c:if>
<h3>고객 조회 후 수정</h3>
<form>
    고객 번호
    <input type="number" name="id" value="${param.id}">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employee}">
    <h5>조회 결과가 없습니다.</h5>
</c:if>
<c:if test="${not empty employee}">
    <form action="/main28/sub11" method="post">


        <div>
            <span>번호</span>
            <input type="number" name="id" readonly value="${employee.id}">
        </div>
        <div>
            <span>라스트이름</span>
            <input type="text" name="last" value="${employee.last}">
        </div>
        <div>
            <span>퍼스트네임</span>
            <input type="text" name="first" value="${employee.first}">
        </div>
        <div>
            <span>생일</span>
            <input type="datetime-local" name="birth" value="${employee.birth}">
        </div>
        <div>
            <span>사진</span>
            <input type="text" name="photo" value="${employee.photo}">
        </div>
        <div>
            <span>노트</span>
            <textarea name="notes" id="" cols="30" rows="10">${employee.notes}</textarea>
        </div>
        <div>
            <button>저장</button>
        </div>
    </form>
</c:if>
</body>
</html>