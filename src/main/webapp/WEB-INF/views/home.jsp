<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Best-Shop.com.ua</title>
    <!-- Material Design Bootstrap -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/compiled.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">

    <style>
    .bg-skin-lp {
    background-color: #F6F6F6;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: fixed;

    }
    .material-icons.md-18 { font-size: 18px; }
    </style>
</head>
<body class="fixed-sn mdb-skin bg-skin-lp">
<header>
    <!-- Sidebar navigation -->

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-toggleable-md navbar-dark scrolling-navbar double-nav">
        <!-- SideNav slide-out button -->
        <%--<div class="float-xs-left">--%>
            <%--<a href="#" data-activates="slide-out" class="button-collapse" onclick="openNav()"> <i class="fa fa-bars"></i></a>--%>
        <%--</div>--%>
        <!-- Breadcrumb-->
        <div class="breadcrumb-dn mr-auto">
            <p>BEST-SHOP.COM.UA</p>
        </div>
        <ul class="nav navbar-nav ml-auto flex-row" style="float: right">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" aria-haspopup="true" aria-expanded="false"
                   data-toggle="modal" data-target="#modal-cart" style="padding-left: 30px;">Cart
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                    <span class="hidden-sm-down">
                        <sec:authorize access="!isAuthenticated()">
                            Account
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            ${usrname.originUsername}
                        </sec:authorize>
                    </span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" style="padding:15px; width:230%;">
                    <sec:authorize access="!isAuthenticated()">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-register"style="width:100%; margin:0 auto">
                            Register
                        </button>
                        <div class="" style="width:100%; height:8px" ></div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-login" style="width:100%; margin:0 auto">
                            Login
                        </button>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <a class="dropdown-item" data-toggle="modal" data-target="#modal-profile">My Profile</a>
                        <a class="dropdown-item" href="/admin">admin</a>
                        <form:form action="logout" method="post">
                            <div class="" style="width:100%; height:8px" ></div>
                            <button class="btn btn-primary red" style="margin: 0 auto; width: 100%">Logout</button>
                        </form:form>
                    </sec:authorize>
                </div>
            </li>
        </ul>
    </nav>
    <!-- /.Navbar -->
</header>
<!--/.Double navigation-->
<!--Main layout-->
<main>
    <section id="cascading-cards">
        <div class="row">
            <c:forEach var="commodity" items="${commodities}">
                <div class="col-md-3" style="margin-bottom:8px">
                    <!--Card-->
                    <div class="card card-cascade" style="width: 100%; height: 100%; margin: 0 auto;">
                        <!--Card image-->
                        <div class="view overlay hm-white-slight" style="height: 290px;">
                            <img src="${commodity.pathToImage}" class="img-fluid" alt="Card image" style="max-height: 100%;max-width:100%; margin: 0 auto;">
                                <a>
                                    <div class="mask waves-effect waves-light"></div>
                                </a>
                        </div>
                        <!--/.Card image-->
                        <!--Card content-->
                        <div class="card-block text-center" STYLE="flex: 0 0 auto; ">
                            <!--Category & Title-->
                            <form:form modelAttribute="getOrder" action="./getOrder?${_csrf.parameterName}=${_csrf.token}" method="post" id="commodityCard" enctype="multipart/form-data">
                                <h4 class="card-title"><strong><a href="">${commodity.name}</a></strong></h4>
                                <p class="card-text">${commodity.description}
                                    <input name="quantity" value="0" type="number" placeholder="quantity">
                                </p>
                                <!--Card footer-->
                                    <div class="card-footer">
                                        <input name="commodityId" type="hidden" value="${commodity.id}">
                                        <span class="left">${commodity.price} UAH</span>
                                        <span class="right">
                                            <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart" form="commodityCard" style="width: 50px;">
                                                <form class="range-field" >
                                                    <input path="quantity" type="hidden" value="1"/>
                                                </form>
                                            </a>
                                        </span>
                                        <span class="bottom">
                                            <sec:authorize access="isAuthenticated()"><button type="submit" class="btn btn-primary waves-effect waves-light" id="BUY" form="commodityCard" STYLE="width: 100%;margin: 0 auto;" >BUY</button></sec:authorize>
                                            <sec:authorize access="!isAuthenticated()"><button type="button"data-toggle="modal" data-target="#modal-login" class="btn btn-primary waves-effect waves-light" id="BUY" STYLE="width: 100%;margin: 0 auto;" >BUY</button></sec:authorize>
                                        </span>
                                        </div>
                            </form:form>
                        </div>
                        <!--/.Card content-->
                    </div>
                    <!--/.Card-->
                </div>
            </c:forEach>
        </div>
    </section>
        <!-- Modal Login -->
        <div class="modal fade modal-ext" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <form:form action="loginprocesing" method="post" id="frmlogjv">
            <div class="modal-dialog" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h3 class="w-100"></i> Login</h3>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form">
                            <input name="username" type="text" id="form2" class="form-control">
                            <label for="form2">Your username</label>
                        </div>

                        <div class="md-form">
                            <input name="password" type="password" id="form3" class="form-control">
                            <label for="form3">Your password</label>
                        </div>
                        <div class="text-center">
                            <button class="btn btn-primary btn-lg" type="submit" form="frmlogjv">Login</button>
                        </div>
                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <div class="options text-right">
                            <p>Forgot <a href="#">Password?</a></p>
                        </div>
                        <button type="button" class="btn btn-default ml-auto" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!--/.Content-->
            </div>
            </form:form>
        </div>
        <!-- Modal Register -->
        <div class="modal fade modal-ext" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header flex-column">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h3 class="w-100"><i class="fa fa-user"></i> Register with:</h3>
                        <div class="flex-row">
                            <a href="" class="btn-floating btn-fb btn-small"><i class="fa fa-facebook"></i></a>
                            <a href="" class="btn-floating btn-tw btn-small"><i class="fa fa-twitter"></i></a>
                            <a href="" class="btn-floating btn-gplus btn-small"><i class="fa fa-google-plus"></i></a>
                            <a href="" class="btn-floating btn-li btn-small"><i class="fa fa-linkedin"></i></a>
                            <a href="" class="btn-floating btn-git btn-small"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form">
                            <i class="fa fa-envelope prefix"></i>
                            <input type="text" id="form2" class="form-control">
                            <label for="form2">Your email</label>
                        </div>

                        <div class="md-form">
                            <i class="fa fa-lock prefix"></i>
                            <input type="password" id="form3" class="form-control">
                            <label for="form3">Your password</label>
                        </div>

                        <div class="md-form">
                            <i class="fa fa-lock prefix"></i>
                            <input type="password" id="form4" class="form-control">
                            <label for="form4">Repeat password</label>
                        </div>

                        <div class="text-center">
                            <button class="btn btn-primary btn-lg">Sign up</button>

                            <fieldset class="form-group">
                                <input type="checkbox" id="checkbox1">
                                <label for="checkbox1">Subscribe me to the newsletter</label>
                            </fieldset>
                        </div>
                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <div class="options">
                            <p>Already have an account? <a href="#">Log in</a></p>
                        </div>
                        <button type="button" class="btn btn-default ml-auto" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- Modal Cart -->
        <div class="modal fade cart-modal" id="modal-cart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Product name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Remove</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="comm" items="${userscp.commodities}" >
                            <tbody>
                            <tr>
                                <th>${comm.id}</th>
                                <th>${comm.name}</th>
                                <th>${comm.price}</th>
                                <th>${comm.quantity}</th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteCommodityFromUser/${comm.id}">delete</a></th>
                            </tr>
                            </tbody>
                            </c:forEach>
                                <%--<td><a><i class="fa fa-remove"></i></a></td>--%>
                            <%----%>
                            <%--<tr class="total">--%>
                                <%--<th scope="row">5</th>--%>
                                <%--<td>Total</td>--%>
                                <%--<td>400$</td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        </table>
                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <button class="btn btn-primary">Checkout</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!-- Modal profile -->
        <div class="modal fade modal-ext" id="modal-profile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title w-100" id="myModalLabel">${usrname.originUsername} profile</h4>

                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <!--Card-->
                        <div class="card testimonial-card">

                            <!--Bacground color-->
                            <div class="card-up default-color-dark">
                            </div>
                            <!--Avatar-->
                            <div class="avatar"><img src="https://mdbootstrap.com/img/Photos/Avatars/img%20%288%29.jpg" class="rounded-circle img-responsive">
                            </div>
                            <div class="card-block">
                                <!--Name-->
                                <h4 class="card-title">Anna Doe</h4>
                                <hr>
                                <!--Quotation-->
                                <p><i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, adipisci</p>
                            </div>
                        </div>
                        <!--/.Card-->
                    </div>
                    <!--Footer-->
                </div>
                <!--/.Content-->
            </div>
        </div>
    <c:forEach var="comm" items="${combyid}" >
        <tbody>
        <tr>
        <tr>
            <th>${comm.subCategory.name}</th>
            <th>${comm.name}</th>
            <th>${comm.price}</th>
            <th>${comm.quantity}</th>
        </tr>
        </tbody>
    </c:forEach>
</main>
<!--/Main layout-->
<!--Footer-->
<footer class="page-footer center-on-small-only">
    <!--Footer Links-->
    <div class="container-fluid">
        <div class="row">
            <!--First column-->
            <div class="col-md-3 offset-1">
                <h5 class="title">Madded by</h5>
                <p>@mackgeeker</p>
            </div>
            <!--/.First column-->
            <hr class="hidden-md-up">
            <!--Second column-->
            <div class="col-md-2 offset-1">
                <h5 class="title">Links</h5>
                <ul>
                    <li><a href="#!">Link 1</a></li>
                    <li><a href="#!">Link 2</a></li>
                </ul>
            </div>
            <!--/.Second column-->
            <hr class="hidden-md-up">
            <!--Third column-->
            <div class="col-md-2">
                <h5 class="title">Links</h5>
                <ul>
                    <li><a href="#!">Link 1</a></li>
                    <li><a href="#!">Link 2</a></li>
                </ul>
            </div>
            <!--/.Third column-->
            <hr class="hidden-md-up">
            <!--Fourth column-->
            <div class="col-md-2">
                <h5 class="title">Links</h5>
                <ul>
                    <li><a href="#!">Link 1</a></li>
                    <li><a href="#!">Link 2</a></li>
                </ul>
            </div>
            <!--/.Fourth column-->
        </div>
    </div>
    <!--/.Footer Links-->
</footer>
<!--/.Footer-->
<!-- SCRIPTS -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/js/compiled.min.js"></script>
</body>
</html>