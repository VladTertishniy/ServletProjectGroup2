<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>

    <%= exception.getStackTrace() %>

</body>
</html>
