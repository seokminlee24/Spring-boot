<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        #some-id1 {
            background-color: black;
            color: white;
        }

        .some-class1 {
            background-color: yellow;
            color: gray;
        }
    </style>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<%--css review--%>
<div id="some-id1">
    Lorem ipsum dolor.
</div>
<div class="some-class1">Lorem ipsum dolor.</div>
<div class="some-class1">sit amet, consectetur.</div>

<%--<table class="table">--%>
<table class="table table-striped">
    <thead>
    <tr>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <%--    tbody>tr*5>td*5>lorem1--%>
    <tbody>
    <tr>
        <td>Lorem.</td>
        <td>Nisi.</td>
        <td>Vitae!</td>
        <td>Reprehenderit.</td>
        <td>Ex.</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Quo.</td>
        <td>Ad.</td>
        <td>Libero!</td>
        <td>Praesentium.</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Modi!</td>
        <td>Suscipit?</td>
        <td>Consequuntur.</td>
        <td>Facilis!</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Odit!</td>
        <td>Voluptate.</td>
        <td>Debitis?</td>
        <td>Mollitia?</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Eligendi.</td>
        <td>Consectetur.</td>
        <td>Et.</td>
        <td>Doloribus.</td>
    </tr>
    </tbody>

</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>
</html>
