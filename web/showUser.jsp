<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MIGUELANGEL
  Date: 04/02/2018
  Time: 04:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show User</title>
</head>
<body>
    <h1>Show User</h1>

    <c:import url="_usershow_fieldset.jsp" />
    <%--<p>Region Id: <c:out value="${user.id}" /></p>--%>
    <%--<p>Region Name: <c:out value="${user.name}" /></p>--%>
    <%--<p>Region Name: <c:out value="${user.lastName}" /></p>--%>
    <%--<p>Region Name: <c:out value="${user.address}" /></p>--%>
    <%--<p>Region Name: <c:out value="${user.telephone}" /></p>--%>
    <%--<p>Region Name: <c:out value="${user.email}" /></p>--%>

    <p><a href="users">Users List</a></p>

</body>
</html>
