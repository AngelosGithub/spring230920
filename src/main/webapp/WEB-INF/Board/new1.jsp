<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-11
  Time: 오후 6:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>게시판</h1>
<h3>새 글 쓰기</h3>
<form action="" method="post">
    <div>
        작성자
        <input type="text" name="name">
    </div>
    <div>
        제목
        <input type="text" name="title">
    </div>
    <div>
        내용
        <textarea name="content" cols="300" rows="100"></textarea>
    </div>
</form>
</body>
</html>
