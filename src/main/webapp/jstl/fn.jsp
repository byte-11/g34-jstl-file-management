<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>FUNCTIONS TAGLIB</h2>
<c:set var="name" value="SomeOne"/>
<c:if test="${fn:containsIgnoreCase(name, \"one\")}">
    <p>${name}</p>
</c:if>
<br>
<p>
    ${fn:toUpperCase(name)}
</p>
<br>
<p>
    ${fn:toLowerCase(name)}
</p>
<br>
<p>
    ${name}
</p>
</body>
</html>
