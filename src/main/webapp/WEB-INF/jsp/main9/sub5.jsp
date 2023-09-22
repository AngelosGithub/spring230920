<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${korea}
<h3>${caps.korea} : seoul</h3>
<h3>${caps["korea"]} : seoul</h3>
<h3>${caps[korea]} : ny</h3>
<h3>${caps["us"]} : ny</h3>
<h3>${caps[us]}</h3>
<hr>
<h2>${phones.phone1}</h2>
<h2>${phones.phone2}</h2>
<h2>${caps.korea}</h2>
<h2>${caps.us}</h2>
<h2>${foods["1st"]}</h2>
<h2>${foods["2nd"]}</h2>
</body>
</html>
