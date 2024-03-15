<%@ page import="java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>SET AND OUT</h3>
<br>
<c:set var="uuid" value="${UUID.randomUUID().toString()}"/>
<p>
    <c:out value="${uuid}"/>
</p>
<p>
    ${Boolean.TRUE}
</p>

<c:if test="${12 gt 12}" var="eq12">
    <p>
        12 >= 12
    </p>
</c:if>
<br>
<p>${eq12}</p>
<br>
<h3>IF ELSE BLOCK</h3>
<br>
<c:choose>
    <c:when test="${1 <= 1}">
        <p>1 <= 1</p>
    </c:when>
    <c:when test="${1 >= 1}">
        <p>1 >= 1</p>
    </c:when>
    <c:otherwise>
        <p>1 == 1</p>
    </c:otherwise>
</c:choose>
<br>
<h3>LOOP</h3>
<c:forEach var="i" begin="1" end="10" step="2">
    <p>${i}</p>
</c:forEach>
</body>
</html>
