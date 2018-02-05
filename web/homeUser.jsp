<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MIGUELANGEL
  Date: 04/02/2018
  Time: 11:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home User</title>
</head>
<body>
    <div style="width:50%; float: left;">
        <c:import url="_usershow_fieldset.jsp" />
    </div>
    <div style="width:50%; float: left;">
        <h1>List Events</h1>

        <table>
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Description</td>
                <td>Actions</td>
            </tr>
            <c:forEach var="event" items="${events}">
                <tr>
                    <td>
                        <a href="events?action=show&id=${event.id}">
                            <c:out value="${event.id}" />
                        </a>
                    </td>
                    <td>
                        <c:out value="${event.name}" />
                    </td>
                    <td>
                        <c:out value="${event.description}" />
                    </td>
                    <td>
                        <a href="events?action=postular&id=${user.id}">Postular</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
