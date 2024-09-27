<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--반복--%>

<c:forEach begin="1" end="3">
    <p>반복되어야하는 콘텐츠</p>
</c:forEach>

<hr>

<c:forEach begin="0" end="4">
    <p>다섯번</p>
</c:forEach>

<hr>

<c:forEach begin="1" end="5" var="idx">
    <p>${idx}번</p>
</c:forEach>

<%--begin 보다 end가 커야함--%>
<%--begin의 값은 음수가 될 수 없음--%>
<hr>
<%--11~15번 출력--%>
<c:forEach begin="11" end="15" var="idx1">
    <p>${idx1}번</p>
</c:forEach>
<hr>

<%--구구단 5 단 입력--%>
<c:forEach begin="1" end="9" var="num">
    <p>5 X ${num} : ${5 * num}</p>
</c:forEach>

<hr>
<%--
request parameter 'dan'
?dan=5     :  5단 출력
?dan=7     :  7단 출력
--%>
<c:if test="${param.dan > 1 && param.dan < 10}" var="validDan">
    <c:forEach begin="1" end="9" var="i">
        <p>${param.dan} X ${i} = ${param.dan * i}</p>
    </c:forEach>
</c:if>
<c:if test="${not validDan}">
    <p>유효한 단 수를 입력하세요</p>
</c:if>
<hr>

<%--forEach를 활용해소 2단~9단까지 출력--%>
<c:if test="${param.dan > 1 && param.dan < 10}">
    <c:forEach begin="1" end="9" var="dan">
        <h5>${dan}단</h5>
        <c:forEach begin="1" end="9" var="num">
            <p>${dan} X ${num} = ${dan * num}</p>
        </c:forEach>
    </c:forEach>
</c:if>

</body>
</html>
