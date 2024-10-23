<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        span:nth-child(odd) {
            background-color: burlywood;
        }

        span:nth-child(even) {
            background-color: cornflowerblue;
        }

        div:nth-child(odd) {
            background-color: burlywood;
        }

        div:nth-child(even) {
            background-color: cornflowerblue;
        }
    </style>
</head>
<body>
<%--요소 배치 : inline(span,a),block(p,div,h1)--%>
<%--block: 가장 넗은 높이--%>
<span class="m-3 p-3">Lorem.</span>
<span class="m-3 p-3">Ipsum?</span>
<span class="m-3 p-3">Quam.</span>
<span class="m-3 p-3">Quia?</span>
<span class="m-3 p-3">Magni!</span>

<hr>
<div class="m-3 p-3">Lorem ipsum dolor.</div>
<div class="m-3 p-3">Ea, numquam, quae!</div>
<div class="m-3 p-3">Ex, inventore, quo.</div>
<div class="m-3 p-3">Cupiditate, eligendi, illo?</div>
<div class="m-3 p-3">Adipisci expedita, quaerat.</div>

<hr>
<%--flexbox : 요소들을 한 줄로 배치--%>

<%--flex container--%>
<div style="display:flex; background-color: yellow; height: 300px">
    <%-- flex item : 가장 높은 높이, 오른쪾(옆)에 배치 --%>
    <div class="m-3 p-3">1</div>
    <div class="m-3 p-3">2</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
    <div class="m-3 p-3">3</div>
</div>

<hr>

<div style="display: flex; background-color: yellow; height: 300px;
justify-content: space-evenly">
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
</div>

<hr>

<div style="display: flex; background-color: yellow; height: 300px;
align-items: center">
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
</div>

<hr>

<div style="display: flex; background-color: yellow; height: 300px;
align-items: center; justify-content: flex-end; gap: 20px">
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
</div>

<hr>
<%--flex item 이 가질 수 있는 속성--%>
<%-- 남은 공간을 어떻게 차지 할지--%>
<%--flex : 남은 공간을 어떻게 차지할지(기본 공간, shrink 조건)--%>
<div style="display: flex; background-color: yellow; height: 300px;">
    <div style="flex-grow:1 ">1</div>
    <div style="flex-grow:2 ">2</div>
    <div style="flex-grow:1 ">3</div>
    <div>4</div>
</div>

<hr>

<div style="display: flex; background-color: yellow; height: 300px;">
    <div style="flex:1 ">1</div>
    <div style="flex:2 ">2</div>
    <div style="flex:1 ">3</div>
    <div>4</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>

</body>
</html>
