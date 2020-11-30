<%--
  Created by IntelliJ IDEA.
  User: DEII
  Date: 11/29/2020
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
    <form method="get" action="/users">
        <input type="hidden" name="action" value="search_country">
        <label>Search by country:</label>
        <input type="text" name="searchCountry">
        <button type="submit">Search</button>
    </form>
<%--    <label>Search by country:</label>--%>
<%--    <input type="text" name="searchCountry">--%>
<%--    <a href="/users?action=search_country">Search</a>--%>


</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th><a href="/users?action=sort&col=name">Name</a></th>
            <th>Email</th>
            <th><a href="/users?action=sort&col=country">Country</a></th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
