<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MIGUELANGEL
  Date: 04/02/2018
  Time: 05:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New User</title>
</head>
<body>
    <h1>New User</h1>
    <form action="users" method="post">
        <fieldset>
            <input type="hidden" name="action" value="create" />

            <label>Type: </label>
            <select name="userType">
                <c:forEach var="userType" items="${usersType}">
                    <option value="${userType.id}">${userType.name}</option>
                </c:forEach>
            </select>
            <jsp:include page="_user_fieldset.jsp"/>
        </fieldset>
    </form>
</body>
</html>
