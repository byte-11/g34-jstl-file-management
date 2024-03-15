<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    public String[] lang = new String[]{"Java", "Kotlin", "Go", "Rust", "C#"};
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="border: 1px solid black">
    <tr>
        <th>#</th>
        <th>Programming Language</th>
    </tr>
    <%
        for (int i = 0; i < lang.length; i++) {
    %>
    <tr>
        <td><%=i%></td>
        <td><%= lang[i]%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
