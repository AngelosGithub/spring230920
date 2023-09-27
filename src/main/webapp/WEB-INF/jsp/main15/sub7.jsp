<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>좋아하는 음식 고르기</h1>
<form action="/main15/sub8" method="post">
    <div>
        <label for="input1">pizza</label>
        <input type="checkbox" name="foods" id="input1" value="pizza">
    </div>
    <div>
        <label for="input2">donut</label>
        <input type="checkbox" name="foods" id="input2" value="donut">
    </div>
    <div>
        <label for="input3">tanghuru</label>
        <input type="checkbox" name="foods" id="input3" value="tanghuru">
    </div>
    <div>
        <label for="input4">kimbob</label>
        <input type="checkbox" name="foods" id="input4" value="kimbob">
    </div>
    <div>
        <label for="input5">pasta</label>
        <input type="checkbox" name="foods" id="input5" value="pasta">
    </div>
    <button>send</button>
</form>
</body>
</html>
