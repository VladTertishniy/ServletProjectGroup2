<%@ page import="test.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    students <br/>
    <%
        List<Student> studentList = (List<Student>) session.getAttribute("studentList");

        if (studentList != null) {
            out.println("<ui>");
            for (Student student : studentList) {
    %>

    <input type="checkbox" name="student" id="<%= student.getId()%>" value="<%=student.getId()%>"><%= student.getName()%><br/>
    <%
            }
            out.println("</ui>");
        } else {
            out.println("<p>There are no users yet!</p>");
        }
    %>
</div>
</body>
</html>
