<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--요청 파라미터 age
age가 20보다 크거나 같으면--%>
<p>투표 가능</p>

<%--그렇지 않으면--%>
<p>투표 불가능</p>
<c:if test="${not empty param.age}">
  <c:if test="${param.age >= 20}" var="goodAge">
    <h3>투표 가능</h3>
  </c:if>
  <c:if test="${not goodAge}">
    <h3>투표 불가능</h3>
</c:if>
</c:if>
<c:if test="${empty param.age}">
  <h3>나이를 입력해주세요</h3>
</c:if>
</body>
</html>
