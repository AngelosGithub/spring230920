<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--model data 출력--%>
<h3>${requestScope.items}</h3>
<ul>
    <c:forEach items="${items}" var="item">
        <li>${item}</li>
    </c:forEach>
</ul>
<%--session data 출력--%>
<h3>${sessionScope.items}</h3>
<ul>
    <c:forEach items="${sessionScope.items}" var="item">
        <li>${item}</li>
    </c:forEach>
</ul>
</body>
</html>
