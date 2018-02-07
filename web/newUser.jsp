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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>New User</title>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="dist/css/form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container">
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="dist/img/logo_micunatruck.png" alt="" width="100" height="100">
            <h2>Checkout form</h2>
        </div>

        <form action="users" method="post">
            <input type="hidden" name="action" value="create" />

        <div class="row">


            <div class="col-md-4 order-md-2 mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">Micuna Truck</span>
                </h4>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0">Food Truck</h6>
                            <small class="text-muted">Desctiption User Food Truck</small>
                        </div>
                        <span class="text-muted"></span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0">Promotor</h6>
                            <small class="text-muted">Desctiption User Promotor</small>
                        </div>
                        <span class="text-muted"></span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span></span>
                        <strong></strong>
                    </li>
                </ul>
            </div>

            <div class="col-md-8 order-md-1">
                <h4 class="mb-3">New User</h4>
                <form class="needs-validation" novalidate="">
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="userType">Type of User</label>
                            <select class="custom-select d-block w-100" id="userType" name="userType" required="">
                                <option value="">Choose...</option>
                                <c:forEach var="userType" items="${usersType}">
                                    <option value="${userType.id}">${userType.name}</option>
                                </c:forEach>
                            </select>
                            <div class="invalid-feedback">
                                Please select a type od user.
                            </div>
                        </div>
                    </div>

                    <%--<div class="row">--%>
                        <%--<div class="col-md-6 mb-3">--%>
                            <%--<label for="firstName">First name</label>--%>
                            <%--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">--%>
                            <%--<div class="invalid-feedback">--%>
                                <%--Valid first name is required.--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-6 mb-3">--%>
                            <%--<label for="lastName">Last name</label>--%>
                            <%--<input type="text" class="form-control" id="lastName" placeholder="" value="" required="">--%>
                            <%--<div class="invalid-feedback">--%>
                                <%--Valid last name is required.--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="mb-3">--%>
                        <%--<label for="email">Email</label>--%>
                        <%--<input type="email" class="form-control" id="email" placeholder="you@example.com" required="">--%>
                        <%--<div class="invalid-feedback">--%>
                            <%--Please enter a valid email address for shipping updates.--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="row">--%>
                        <%--<div class="col-md-6 mb-3">--%>
                            <%--<label for="firstName">Password</label>--%>
                            <%--<input type="password" class="form-control" id="password" placeholder="" value="" required="">--%>
                            <%--<div class="invalid-feedback">--%>
                                <%--Valid password is required.--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-6 mb-3">--%>
                            <%--<label for="lastName">Repeat Password</label>--%>
                            <%--<input type="password" class="form-control" id="password2" placeholder="" value="" required="">--%>
                            <%--<div class="invalid-feedback">--%>
                                <%--Valid password is required.--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <jsp:include page="_user_fieldset.jsp"/>

                    <hr class="mb-4">

                    <button class="btn btn-primary btn-lg btn-block" type="submit">Create</button>
                </form>
            </div>
        </div>

        </form>

        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1">© 2018 InkaCoderss</p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">HomePage</a></li>
            </ul>
        </footer>
    </div>

    <%--<h1>New User</h1>--%>
    <%--<form action="users" method="post">--%>
        <%--<fieldset>--%>
            <%--<input type="hidden" name="action" value="create" />--%>

            <%--<label>Type: </label>--%>
            <%--<select name="userType">--%>
                <%--<c:forEach var="userType" items="${usersType}">--%>
                    <%--<option value="${userType.id}">${userType.name}</option>--%>
                <%--</c:forEach>--%>
            <%--</select>--%>
            <%--<jsp:include page="_user_fieldset.jsp"/>--%>
        <%--</fieldset>--%>
    <%--</form>--%>
</body>
</html>
