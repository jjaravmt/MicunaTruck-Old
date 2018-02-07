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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="dist/css/dashboard.css" rel="stylesheet">
    </head>
<body>

    <c:import url="layouts/_header.jsp" />

    <div class="container-fluid">
        <div class="row">
            <c:import url="layouts/_main.jsp" />

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4" style="padding-top: 4rem !important;">
                <h2>List Events</h2>
                <div>
                    <table class="table table-striped table-sm">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
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
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <script src="dist/js/jquery-3.1.1.slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="dist/js/jquery-3.1.1.slim.min.js"><\/script>')</script>
    <script src="dist/js/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="dist/js/feather.min.js"></script>
    <script>
        feather.replace()
    </script>

</body>
</html>