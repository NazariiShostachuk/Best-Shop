<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>BestShop</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/css/mdb.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/css/myStyles.css" rel="stylesheet">
</head>

<body>



<header>
    <!--Navbar-->
    <nav class="navbar navbar-dark primary-color-dark">
        <div class="idNameUser"><sec:authentication property="name"/></div>
        <!-- Collapse button-->
        <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#collapseEx">
            <i class="fa fa-bars"></i>
        </button>
        <div class="container">
            <!--Collapse content-->
            <div class="collapse navbar-toggleable-xs" id="collapseEx">
                <!--Navbar Brand-->
                <a class="navbar-brand" href="home" target="_blank">Best-Shop.com.ua</a>
                <!--Links-->
                <ul class="nav navbar-nav">
                </ul>
                <!--Search form-->
                <!--
                                    <form class="form-inline">
                                        <input class="form-control" type="text" placeholder="Search">
                                    </form>
                -->
                <sec:authorize access="!isAuthenticated()">
                    <div class="btn-group" id="logBTN">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >SIGN IN</button>
                        <div class="dropdown-menu" id="logBTN_dropdown">
                            <form:form action="loginprocesing" method="post" id="frmlogjv">
                                <div class="md-form" id="logBTN_form1">
                                    <i class="fa fa-user prefix"></i>
                                    <input name="username" type="text" id="form1" class="form-control">
                                    <label for="form2">login name</label>
                                </div>
                                <div class="md-form" id="logBTN_form2">
                                    <i class="fa fa-user-secret prefix"></i>
                                    <input name="password" type="password" id="form2" class="form-control">
                                    <label for="form2">password</label>
                                </div>
                                <button type="submit" class="btn btn-primary" id="rebBTN" form="frmlogjv">LOGIN</button>
                                <div class="dropdown-divider"></div>
                                <button type="button" class="btn btn-primary" id="rebBTN"  onClick='location.href="registration"'>Registration</button>
                            </form:form>
                        </div>
                    </div>
                </sec:authorize>
            </div>
            <!--/.Collapse content-->
        </div>
    </nav>
    <!--/.Navbar-->

</header>
<main>
    <!--Main layout-->
    <div class="container">
        <div class="row">
            <!--Main column-->
            <div class="col-md-8">
                <!--Second row-->
                <div class="row">
                    <div class="card" style="width: 40%;margin:0 auto;margin-bottom:25px; padding: 30px;">
                        <div class="formAddCommodity">
                            <div class="login">
                                <div class="login-triangle"></div>

                                <h2 class="login-header">Registration</h2>
                                <form:form modelAttribute="user" action="registration" method="post" id="regForm">
                                    <p><form:input path="username" type="text" placeholder="user name"/></p>
                                    <p><form:input path="email" type="email" placeholder="email"/></p>
                                    <p><form:input path="phoneNumber" placeholder="phone"/></p>
                                    <p><form:input path="password" type="password" placeholder="Password"/></p>
                                    <button type="submit" class="btn btn-primary" id="rebBTN" form="regForm">Register</button>
                                </form:form>
                            </div>
                        </div>
                    </div>

                </div>
                <!--/.Second row-->
            </div>
            <!--/.Main column-->
        </div>
    </div>
    <!--/.Main layout-->
</main>
<!--Footer-->
<footer class="page-footer center-on-small-only primary-color-dark">
    <!--Footer Links-->
    <div class="container-fluid">
        <div class="row">
            <!--First column-->
            <div class="col-md-3 offset-md-1">
                <h5 class="title">ABOUT MATERIAL DESIGN</h5>
            </div>
            <!--/.First column-->
            <hr class="hidden-md-up">
            <!--Second column-->
            <div class="col-md-2 offset-md-1">
                <h5 class="title">First column</h5>
                <ul>
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#">Link 2</a></li>
                    <li><a href="#">Link 3</a></li>
                    <li><a href="#">Link 4</a></li>
                </ul>
            </div>
            <!--/.Second column-->
            <hr class="hidden-md-up">
            <!--Third column-->
            <div class="col-md-2">
                <h5 class="title">Second column</h5>
                <ul>
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#">Link 2</a></li>
                    <li><a href="#">Link 3</a></li>
                    <li><a href="#">Link 4</a></li>
                </ul>
            </div>
            <!--/.Third column-->

            <hr class="hidden-md-up">

            <!--Fourth column-->
            <div class="col-md-2">
                <h5 class="title">Third column</h5>
                <ul>
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#">Link 2</a></li>
                    <li><a href="#">Link 3</a></li>
                    <li><a href="#">Link 4</a></li>
                </ul>
            </div>
            <!--/.Fourth column-->
        </div>
    </div>
    <!--/.Footer Links-->
    <hr>
</footer>
<!--/.Footer-->
<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="/js/jquery-2.2.3.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/js/tether.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/js/mdb.min.js"></script>
</body>
</html>
