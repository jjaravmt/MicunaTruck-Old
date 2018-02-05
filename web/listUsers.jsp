<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MIGUELANGEL
  Date: 04/02/2018
  Time: 05:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Users</title>
</head>
<body>
    <h1>Users List</h1>

    <table>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Email</td>
            <td>Actions</td>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>
                    <a href="users?action=show&id=${user.id}">
                        <c:out value="${user.id}" />
                    </a>
                </td>
                <td>
                    <c:out value="${user.name}" />
                </td>
                <td>
                    <c:out value="${user.email}" />
                </td>
                <td>
                    <a href="users?action=edit&id=${user.id}">Edit</a>
                    &nbsp;
                    <a href="users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <p>
        <a href="users?action=new">New Users</a>
    </p>
</body>
</html>
