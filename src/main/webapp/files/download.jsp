<%@ page import="uz.pdp.g34jstlfilemanagement.repo.SystemFileRepository" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>File Upload</title>
    <style>
        table {
            border-collapse: collapse;
            margin: 40px auto;
        }

        th, td {
            border: 1px solid black;
            padding: 10px 50px;
        }
    </style>
</head>
<body>
<c:set var="systemFiles" value="<%=SystemFileRepository.SYSTEM_FILES%>"/>
<br>
    <h2>Uploaded Files</h2>
<br>
<b></b>
<table>
    <thead>
    <tr>
        <th>#</th>
        <th>File Name</th>
        <th>Size</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="file" varStatus="stat" items="${systemFiles}">
        <tr>
            <td>${stat.index}</td>
            <td>${file.name}</td>
            <td>${file.size} bytes</td>
            <td><a href="/files/download?fileName=${file.submittedName}">⬇️</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
