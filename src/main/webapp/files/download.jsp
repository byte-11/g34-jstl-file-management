<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
<form action="/files/download" method="post">

    <label>
        Enter file name : <input type="text" name="fileName">
    </label>
    <br>
    <br>
    <button type="submit">Download</button>
</form>
</body>
</html>
