<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <c:forEach begin="0" end="3" var="i">
    <p>${foodList[i]}</p>
  </c:forEach>
  <hr>
<c:forEach items="${names}" var="n">
    <p>${n}</p>
</c:forEach>
  <hr>
  <style>
      .box {
          border: 1px solid black;
          margin: 5px;
          padding: 10px;
          display: flex;
          /*justify-content: space-between;*/
          gap: 10px;
      }
      .box > div {
          border: 2px solid orange;
      }
      ul {
          width: 150px;
          border: 2px dashed burlywood;
      }
      li {
          border: 1px solid sandybrown;
      }
  </style>
<c:forEach begin="0" end="3" var="n" varStatus="status">
    <div class="box">
        <div class="content1">
            n : ${n}
        </div>
        <div class="content2">
            <div>count : ${status.count}</div>
            <div>index : ${status.index}</div>
            <div>current : ${status.current}</div>
            <div>first : ${status.first}</div>
            <div>last : ${status.last}</div>
        </div>
    </div>
  </c:forEach>
  <hr>

<c:forEach items="${names}" var="name" varStatus="status">
    <div class="box">
        <div class="content1">
            name : ${name}
        </div>
        <div class="content2">
            <div>count : ${status.count}</div>
            <div>index : ${status.index}</div>
            <div>current : ${status.current}</div>
            <div>first : ${status.first}</div>
            <div>last : ${status.last}</div>
        </div>
    </div>
</c:forEach>
  <hr>
  <ul>
<c:forEach items="${foodList}" var="food" varStatus="status">

        <li>${status.count} : ${food}</li>

</c:forEach>
  </ul>
</body>
</html>
