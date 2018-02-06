<%--
  Created by IntelliJ IDEA.
  User: MIGUELANGEL
  Date: 05/02/2018
  Time: 02:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Sign In</title>
    <link href="dist/css/bootstrap.css" rel="stylesheet">
    <link href="dist/css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
    <form class="form-signin" action="users?action=auth" method="post">
        <a href="home" style="text-decoration: none;">
            <img class="mb-4" src="dist/img/logo_micunatruck.png" alt="" width="200" height="200">
        </a>
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <p class="mt-5 mb-3 text-muted">© 2018</p>
    </form>
</body>
</html>
