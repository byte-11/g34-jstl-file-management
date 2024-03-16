<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
<form action="/files/upload" method="post" enctype="multipart/form-data">

    <label>
        Choose File : <input type="file" name="file">
    </label>
    <br>
    <br>
    <button type="submit">Upload</button>
</form>

<br>
<br>
<a href="/files/download">Uploaded files</a>
</body>
</html>
