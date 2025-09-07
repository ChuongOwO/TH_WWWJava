<%--
  Created by IntelliJ IDEA.
  User: chuon
  Date: 9/7/2025
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="iuh.fit.se.Entity.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Student student = new Student();
        student = (Student) request.getAttribute("student");
        out.println(
                "First Name: " + student.getFirstName()
                + "<br> Last Name: " + student.getLastName()
                + "<br> Email: " + student.getEmail()
                + "<br> Gender: " + student.getGender()
                + "<br> Birthday: " + student.getBirthDate()
        );
    %>
</body>
</html>
