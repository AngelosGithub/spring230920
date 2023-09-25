<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--http://localhost:8080/main11/sub2?dan=2 구구단 2단 출력--%>
<c:if test="${(param.dan >= 2) and (param.dan <=9)}" var="okDan">
<h2>구구단 ${param.dan} 단</h2>
<c:forEach begin="1" end="9" var="i">
    <p>${param.dan} X ${i} = ${param.dan * i}</p>
</c:forEach>
</c:if>
<c:if test="${not okDan}">
    <h3>2~9사이만 입력</h3>
</c:if>
</body>
</html>
