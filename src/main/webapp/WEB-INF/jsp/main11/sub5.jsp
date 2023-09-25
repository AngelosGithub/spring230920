<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>choose, when, otherwise tag</h1>
<c:choose>
    <c:when test="false">
        <p>when 1</p>
    </c:when>
    <c:when test="false">
        <p>when 2</p>
    </c:when>
    <c:when test="false">
        <p>when 3</p>
    </c:when>
    <c:otherwise>
        <p>otherwise 1</p>
    </c:otherwise>
</c:choose>
</body>
</html>
