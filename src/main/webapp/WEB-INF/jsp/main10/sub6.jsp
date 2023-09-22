<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
</body>
</html>
