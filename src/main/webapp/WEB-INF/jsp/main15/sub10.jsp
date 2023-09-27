<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>\${modelAttr1} : ${modelAttr1}</h1>
<h1>\${sessionAttr1} : ${sessionAttr1}</h1>

<%--el 에서 attribut에 접근하면 좁은 영역부터 찾는다--%>
<%--page<request(model)<session<application--%>
<h1>\${attr1} : ${attr1}</h1>
<%--model,session이 같은 이름을 가졌지만 model이 좁은 영역이기때문에 model의 데이터가 출력--%>
<h1>\${sessionScope.attr1} : ${sessionScope.attr1}</h1>

</body>
</html>
