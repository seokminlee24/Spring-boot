<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>/main19/sub1.jsp</h3>
<%-- ex) http://172.30.1.9:8080/main19/sub1?address=%EC%84%9C%EC%9A%B8--%>
<%--<form action="http://localhost:8080/main19/sub1" 같은면 생략 가능>--%>
<%--<form action="/main19/sub1">--%>
<%--action : request parameters 가 전달되는 위치
  ,생략되면--%>
<form>
    <input type="text" name="address" value="서울">
    <br>
    <input type="text" name="nick" value="수도">
    <%--sibmit(제출) 버튼--%>
    <%--
    sibmit 버튼 클릭시
      :action 속성(attribute)에 명시된 위치로
      method 속성(attribute) 방식으로
      form 요소들의 name:value 쌍이 전달됨
    --%>
    <button>제출</button>
</form>
<hr>
<hr>
<%-- /main19/sub2?name=흥민&age=44 --%>
<form action="/main19/sub2">
    <%--  (input+br)*2+button{전송}--%>
    <input type="text" name="name" value="흥민">
    <br>
    <input type="text" name="age" value="44">
    <br>
    <button>전송</button>
</form>
<hr>
<%-- /main19/sub3?food=피자&email=yahoo&city=인천 --%>
<form action="/main19/sub3">
    <%--  (input[name][value]+br)*3+button{전송}--%>
    <input type="text" name="food" value="피자">
    <br>
    <input type="text" name="email" value="email">
    <br>
    <input type="text" name="city" value="인천">
    <br>
    <button>전송</button>
</form>
<hr>
<form action="/main19/sub4">
    <input type="text" name="name" value="흥민">
    <br>
    <%--  select[name]>option[value]{val$}*3--%>
    <select name="food" id="">
        <option value="pizza">val1</option>
        <option value="coffee">val2</option>
        <option value="burger">val3</option>
    </select>
    <br>
    <%--  textarea[name=memo]>lorem3--%>
    <textarea name="memo" id="" cols="30" rows="10">Lorem ipsum dolor.</textarea>
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub5">
    <%--  (input:c+lorem1+br)*3--%>
    <input type="checkbox" name="city" id="" value="seoul">
    Lorem.
    <br>
    <input type="checkbox" name="city" id="" value="busan">
    Sequi.
    <br>
    <input type="checkbox" name="city" id="" value="jeju">
    Eum.
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub6">
    <%--    체큽박스에 value 가 없는 경우--%>
    <input type="checkbox" name="accept">
    동의 합니다.
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub7">
    <%--    (input:r+lorem1+br)*3--%>
    <input type="radio" name="location" id="" value="gananam">
    Lorem.
    <br>
    <input type="radio" name="location" id="sinchon">
    Officiis.
    <br>
    <input type="radio" name="location" id="hongdae">
    Aliquid!
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub8">
    <input type="date" name="birth">
    <br>
    <input type="datetime-local" name="now">
    <br>
    <input type="hidden" name="some">
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub10">
    <%--  input[name value]+br--%>
    <input type="text" name="address" value="서울">
    <br>
    <%--  (input:c[name=foods]+br)*3--%>
    <input type="checkbox" name="foods" id="" value="coke">
    콜라
    <br>
    <input type="checkbox" name="foods" id="" value="bugger">
    버거
    <br>
    <input type="checkbox" name="foods" id="" value="pizza">
    피자
    <br>
    <%--  (input:r[name=choice]+br)*3--%>
    <input type="radio" name="choice" id="" value="sel1">
    선택1
    <br>
    <input type="radio" name="choice" id="" value="sel2">
    선택2
    <br>
    <input type="radio" name="choice" id="" value="sel3">
    선택3
    <br>
    <%--  input:date[name=birthDate]+br--%>
    <input type="date" name="birthDate" id="">
    <br>
    <%--  input[type=datetime-local][name=startDateTime]+br--%>
    <input type="datetime-local" name="startDateTime">
    <br>
    <%--  (select[name]>option[value=some$]*3^br)--%>
    <select name="select" id="">
        <option value="some1">선택1</option>
        <option value="some2">선택2</option>
        <option value="some3">선택3</option>
    </select>
    <br>
    <%--  textarea[name]>lorem3^br --%>
    <textarea name="note" id="" cols="30" rows="10">Lorem ipsum dolor.</textarea>
    <br>
    <%--  button{전송}--%>
    <button>전송</button>
</form>
</body>
</html>
