<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-05
  Time: 오전 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
        }

        th {
            background-color: aqua;
        }

    </style>
</head>
<body>
<h4>공급자 목록</h4>
<table>
    <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>주소</th>
        <th>나라</th>
    </tr>
    <c:forEach items="${supplierList}" var="sup">
        <tr>
            <td>${sup.sid}</td>
            <td>${sup.supplierName}</td>
            <td>${sup.address}</td>
            <td>${sup.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
