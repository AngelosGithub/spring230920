<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오전 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>고객 검색</h4>
<form action="">
    검색어
    <input type="text" name="k" placeholder="입력" value="${keyword}">
    <button>찾기</button>
</form>
<hr>
<ul>
    <c:forEach items="${nameList}" var="name">
        <li>${name}</li>
    </c:forEach>
</ul>
</body>
</html>
