<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JOSE
  Date: 04/02/2018
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Start Page</title>
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="dist/css/MicunaTruck.css" rel="stylesheet">
    </head>
    <body>
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">Micuna Truck</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="#">Support</a>
                <a class="p-2 text-dark" href="#">Pricing</a>
            </nav>
            <a class="btn btn-outline-primary" href="users?action=signin">Sign In</a>
        </div>

        <div class="pricing-header px-3 py-3 pt-md-4 pb-md-3 mx-auto text-center">
            <h1 class="display-4">Micuna Truck</h1>
            <p class="lead">Join our family We are a company with aspirations to be the best in our field. In addition, we consider that our customers are the most important for us.</p>
        </div>
        <div class="container">
            <div class="card-deck mb-3 text-center">
                <div class="card mb-4 box-shadow">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">FoodTruck</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">User <small class="text-muted">FoodTruck</small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>List of Events</li>
                            <li>Postulate</li>
                            <li>Profile</li>
                            <li>Help</li>
                        </ul>

                        <%--<a href="users?action=new" style="text-decoration: none;">--%>
                            <%--<button type="submit" class="btn btn-lg btn-block btn-outline-primary">--%>
                                <%--Register--%>
                            <%--</button>--%>
                        <%--</a>--%>
                    </div>
                </div>
                <div class="card mb-4 box-shadow">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">Promotor</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">User <small class="text-muted">Promotor</small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Create events</li>
                            <li>See candidates</li>
                            <li>Choose</li>
                            <li>Help center access</li>
                        </ul>
                        <%--<a href="users?action=new" style="text-decoration: none;">--%>
                            <%--<button type="button" class="btn btn-lg btn-block btn-primary">Register</button>--%>
                        <%--</a>--%>
                    </div>
                </div>
            </div>
            <div class="card-deck mb-3 text-center">
                <div class="card mb-4 box-shadow">
                    <a href="users?action=new" style="text-decoration: none;">
                        <button type="button" class="btn btn-lg btn-block btn-primary">Register</button>
                    </a>
                </div>
            </div>
            <footer class="pt-4 my-md-5 pt-md-5 border-top">
                <div class="row">
                    <div class="col-12 col-md">
                        <img class="mb-2" src="dist/img/logo_micunatruck.png" alt="" width="50" height="50">
                        <small class="d-block mb-3 text-muted">© 2018</small>
                    </div>
                    <div class="col-6 col-md">
                        <h5>Features</h5>
                        <ul class="list-unstyled text-small">
                            <li><a class="text-muted" href="#">Cool stuff</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md">
                        <h5>Resources</h5>
                        <ul class="list-unstyled text-small">
                            <li><a class="text-muted" href="#">Resource</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md">
                        <h5>About</h5>
                        <ul class="list-unstyled text-small">
                            <li><a class="text-muted" href="#">Team</a></li>
                            <li><a class="text-muted" href="#">Locations</a></li>
                            <li><a class="text-muted" href="#">Privacy</a></li>
                            <li><a class="text-muted" href="#">Terms</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="dist/js/bootstrap.min.js"></script>
    </body>
</html>
