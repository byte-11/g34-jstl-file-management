<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html>
<head>
    <title>FMT</title>
</head>
<body>
<h2>DATE FORMAT</h2>
<br>
<fmt:formatDate var="currentDate" value="<%=new Date()%>" pattern="dd-MMMM-yyyy"/>
<c:out value="${currentDate}"/>
<br>
<fmt:formatDate value="<%=new Date()%>" var="currentDate1" type="both"/>
<c:out value="${currentDate1}"/>
<br>
<fmt:formatDate value="<%=new Date()%>" var="currentDate2" type="date"/>
<c:out value="${currentDate2}"/>
<br>
<fmt:formatDate value="<%=new Date()%>" var="currentDate3" type="time"/>
<c:out value="${currentDate3}"/>
</body>
</html>
