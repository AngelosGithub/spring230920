<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3> el 에서 사용 할 수 있는 연산자</h3>
<h3> 산술 연산자 </h3>
<h3>더하기</h3>
<h4>${a} + ${b} = ${a+b}</h4>
<h4>${c} + ${d} = ${c+d}</h4>
<h3>빼기</h3>
<h4>${a} - ${b} = ${a-b}</h4>
<h4>${c} - ${d} = ${c-d}</h4>
<h3>곱하기</h3>
<h4>${a} * ${b} = ${a*b}</h4>
<h4>${c} * ${d} = ${c*d}</h4>
<h3>나누기</h3>
<h4>${a} / ${b} = ${a/b}</h4>
<h4>${c} / ${d} = ${c/d}</h4>
<h3>div 키워드로 나누기</h3>
<h4>${a} / ${b} = ${a div b}</h4>
<h4>${c} / ${d} = ${c div d}</h4>

<h3>% (mod) : 나머지 연산 (modulo, remainder)</h3>
<h4>${b} % ${a} = ${b % a}</h4>
<h4>${c} % ${a} = ${c % a}</h4>
<h4>${d} % ${a} = ${d mod a}</h4>

<h3>() : 우선순위 높음</h3>
<h4>${a*b-c}</h4>
<h4>${a*(b-c)}</h4>
<h4>${(a*b)-c}</h4>


<hr>
<h3>2단</h3>
<C:forEach begin="1" end="9" var="i">
    <p>2 X ${i} = ${2 * i}</p>
</C:forEach>

<h3>2단 ~ 9단</h3>
<C:forEach begin="2" end="9" var="j">
    <h5>구구단 ${j} 단</h5>
    <C:forEach begin="1" end="9" var="i">
        <p>${j} X ${i} = ${j * i}</p>
    </C:forEach>
</C:forEach>

<h3>9단 ~ 2단</h3>
<C:forEach begin="2" end="9" var="j">
    <h5>구구단 ${(j-11)*-1} 단</h5>
    <C:forEach begin="1" end="9" var="i">
        <p>${(j-11)*-1} X ${i} = ${((j-11) * i)*-1}</p>
    </C:forEach>
</C:forEach>
</body>
</html>
