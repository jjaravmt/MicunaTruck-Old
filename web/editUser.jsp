<%--
  Created by IntelliJ IDEA.
  User: MIGUELANGEL
  Date: 04/02/2018
  Time: 05:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
    <h1>Edit Region</h1>
    <form action="users" method="post">
        <fieldset>
            <input type="hidden" name="action" value="update" />
            <input type="hidden" name="id" value="${user.id}" />
            <jsp:include page="_user_fieldset.jsp"/>
        </fieldset>
    </form>
    <p><a href="users">Users List</a></p>
</body>
</html>
