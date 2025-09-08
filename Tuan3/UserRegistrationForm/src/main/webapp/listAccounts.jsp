<%--
  Created by IntelliJ IDEA.
  User: chuon
  Date: 9/8/2025
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Account List</title>
</head>
<body>
<h2>Danh sách tài khoản</h2>
<table border="1" cellpadding="5">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Birthday</th>
        <th>Gender</th>
    </tr>
    <c:forEach var="acc" items="${accounts}">
        <tr>
            <td>${acc.firstName}</td>
            <td>${acc.lastName}</td>
            <td>${acc.email}</td>
            <td>${acc.birthday}</td>
            <td>${acc.gender}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

