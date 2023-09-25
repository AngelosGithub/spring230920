<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 2:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
main11/sub7?show=true
table형식의 데이터
--%>
<%--
main11/sub7
parameter를 입력해주세요
--%>
<c:if test="${param.show == 'true'}">
    <table>
        <tr>
            <th>id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Class Name</th>
            <th>Phone Number</th>
        </tr>

        <c:forEach items="${moving}" var="i">
            <tr>
                <td>${i.id}</td>
                <td>${i.firstName}</td>
                <td>${i.lastName}</td>
                <td>${i.className}</td>
                <td>${i.phoneNumber}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${param.show == 'false'}">
    <p>올바르지 않은 값 입니다</p>
</c:if>
<c:if test="${empty param.show}">
    <p>parameter를 입력해주세요</p>
</c:if>
</body>
</html>
