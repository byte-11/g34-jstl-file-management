<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jakarta Expression Language</title>
</head>
<body>
    <p>12 / 3 = <%= 12 /3 %></p>
    <p>12 / 3 = ${12 / 3}</p>
    <p>12 + 3 = ${12 + 3}</p>
    <p>12 - 3 = ${12 - 3}</p>
    <p>12 % 3 = ${12 % 3}</p>
    <p>12 div 3 = ${12 div 3}</p>
    <p>12 mod 3 = ${12 mod 3}</p>

    <p>12 == 3 = ${12 eq 3}</p>
    <p>12 > 3 = ${12 gt 3}</p>
    <p>12 >= 3 = ${12 ge 3}</p>
    <p>12 < 3 = ${12 lt 3}</p>
    <p>12 <= 3 = ${12 le 3}</p>
    <p>not 12 <= 3 = ${not (12 le 3)}</p>
</body>
</html>
