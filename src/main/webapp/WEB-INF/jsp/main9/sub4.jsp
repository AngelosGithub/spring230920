<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오전 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>${attr3.name}</h2>
<h2>${attr3["name"]}</h2>
<%--&lt;%&ndash;<h2>${attr3.my name}</h2>&ndash;%&gt;--%>
<h2>${attr3["my name"]}</h2>
<%--&lt;%&ndash;<h2>${attr3.your-name}</h2>&ndash;%&gt;--%>
<h2>${attr3["your-name"]}</h2>
<hr>
<h1>${myMap}</h1>
<h1>${myMap["son"]}</h1>
<h1>${myMap["lee"]}</h1>
<h1>${myMap["kim"]}</h1>
<hr>
<h2>${myMap.son}</h2>
<h2>${myMap.kim}</h2>
<h2>${myMap.lee}</h2>
<hr>
<h2>${cityMap.seoul}</h2>
<h2>${cityMap.busan}</h2>
<h2>${color.red}</h2>
<h2>${color.blue}</h2>
<h2>${color["black"]}</h2>
</body>
</html>
