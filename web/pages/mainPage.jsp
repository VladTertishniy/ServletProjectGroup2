<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<div>Hello, <%= session.getAttribute("userName")%></div>
<div><a href="${pageContext.request.contextPath}/test?action=logOut">Exit</a></div>

<div>
    <% String includedPage = (String) session.getAttribute("includedPage");%>
    <% if (!includedPage.isEmpty()) {  %>
    <jsp:include page="<%= includedPage %>"></jsp:include>
    <% }                              %>
</div>

<div><a href="${pageContext.request.contextPath}/test?action=showAllStudents">Students</a></div>

</body>
</html>
