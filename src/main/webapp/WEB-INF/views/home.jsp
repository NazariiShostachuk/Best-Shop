<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Best-Shop.com.ua</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Material Design Bootstrap -->
    <link href="/css/styles.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <%--<link href="/css/myStyles.css" rel="stylesheet">--%>
    <!-- Material Design Google Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">

    <style>
    .bg-skin-lp {
    /*            background-image: url('https://mdbootstrap.com/img/Photos/Lightbox/Orignal/img%20%281%29.jpg'); */
    background-color: #F6F6F6;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: fixed;
    }
    </style>

</head>
<body class="fixed-sn mdb-skin bg-skin-lp">
<!--Double navigation-->
<header>
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-toggleable-md navbar-dark scrolling-navbar double-nav">
        <div class="breadcrumb-dn mr-auto">
            <p>BEST-SHOP.COM.UA</p>
        </div>

        <ul class="nav navbar-nav ml-auto flex-row">
            <li>
                <form class="search-form" role="search" >
                    <div class="form-group waves-light" style="margin-bottom: 0">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                </form>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" aria-haspopup="true" aria-expanded="false"
                   data-toggle="modal" data-target="#modal-cart" style="padding-left: 30px;">
                    <i class="counter">4</i>Cart
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                    <i class="fa fa-user"></i>
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
                    <a class="dropdown-item" href="#">Another action</a>
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
    <!-- Nav tabs -->
    <%--<div class="row">--%>
        <%--<div class="col-md-3">--%>
            <%--<ul class="nav nav-tabs md-pills pills-primary flex-column" role="tablist">--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link active" data-toggle="tab" href="#panel21" role="tab"><i class="fa fa-user"></i> Profile</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link" data-toggle="tab" href="#panel22" role="tab"><i class="fa fa-heart"></i> Follow</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link" data-toggle="tab" href="#panel23" role="tab"><i class="fa fa-envelope"></i> Contact</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<div class="col-md-9">--%>
            <%--<!-- Tab panels -->--%>
            <%--<div class="tab-content vertical">--%>
                <%--<!--Panel 1-->--%>
                <%--<div class="tab-pane fade in show active" id="panel21" role="tabpanel">--%>
                    <%--<br>--%>

                    <%--<section id="cascading-cards">--%>

                        <%--<div class="row">--%>

                            <%--<div class="col-md-4" style="margin-bottom:8px">--%>

                                <%--<!--Card-->--%>
                                <%--<div class="card card-cascade">--%>

                                    <%--<!--Card image-->--%>
                                    <%--<div class="view overlay hm-white-slight">--%>
                                        <%--<img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20%2842%29.jpg" class="img-fluid" alt="Card image with a sunset in mountains.">--%>
                                        <%--<a>--%>
                                            <%--<div class="mask waves-effect waves-light"></div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<!--/.Card image-->--%>

                                    <%--<!--Card content-->--%>
                                    <%--<div class="card-block text-center">--%>
                                        <%--<!--Category & Title-->--%>
                                        <%--<h5>Category</h5>--%>
                                        <%--<h4 class="card-title"><strong><a href="">Product name</a></strong></h4>--%>

                                        <%--<!--Description-->--%>
                                        <%--<p class="card-text">Description--%>
                                        <%--</p>--%>

                                        <%--<!--Card footer-->--%>
                                        <%--<div class="card-footer">--%>
                                            <%--<span class="left">49$</span>--%>
                                            <%--<span class="right">--%>
                                            <%--<a data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>--%>
                                            <%--</span>--%>
                                        <%--</div>--%>

                                    <%--</div>--%>
                                    <%--<!--/.Card content-->--%>
                                <%--</div>--%>
                                <%--<!--/.Card-->--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<!-- /.Live preview-->--%>
                    <%--</section>--%>

                <%--</div>--%>
                <%--<!--/.Panel 1-->--%>
                <%--<!--Panel 2-->--%>
                <%--<div class="tab-pane fade" id="panel22" role="tabpanel">--%>
                    <%--<br>--%>
                    <%--lol2--%>
                <%--</div>--%>
                <%--<!--/.Panel 2-->--%>
                <%--<!--Panel 3-->--%>
                <%--<div class="tab-pane fade" id="panel23" role="tabpanel">--%>
                    <%--<br>--%>
                <%--lol3--%>
                <%--</div>--%>
                <%--<!--/.Panel 3-->--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <section id="cascading-cards">


        <div class="row">

            <c:forEach var="commodity" items="${commodities}">
                <div class="col-md-4" style="margin-bottom:8px">
                    <!--Card-->
                <div class="card card-cascade">
                    <!--Card image-->
                    <div class="view overlay hm-white-slight">
                        <img src="${commodity.pathToImage}"
                             class="img-fluid" alt="Card image">
                        <a>
                            <div class="mask waves-effect waves-light"></div>
                        </a>
                    </div>
                    <!--/.Card image-->
                    <!--Card content-->
                    <div class="card-block text-center">
                        <!--Category & Title-->
                        <form:form modelAttribute="getOrder" action="./getOrder?${_csrf.parameterName}=${_csrf.token}" method="post" id="commodityCard" enctype="multipart/form-data">
                        <h5>Shoes</h5>
                        <h4 class="card-title"><strong><a href="">${commodity.name}</a></strong></h4>
                        <p class="card-text">${commodity.description}
                            <input name="quantity" value="0" type="number" placeholder="quantity">
                        </p>
                        <!--Card footer-->
                            <div class="card-footer">
                            <input name="commodityId" type="hidden" value="${commodity.id}">
                            <span class="left">${commodity.price} UAH
                            </span>
                            <span class="right">
                                <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart" form="commodityCard" style="width: 50px;">
                                    <form class="range-field" >
                                        <input path="quantity"  type="number" value="1"/>
                                    </form>
                                </a>
                                <button type="submit" class="btn btn-primary waves-effect waves-light" id="BUY" form="commodityCard">BUY</button>
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

    <modal>

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
                        <h3 class="w-100"><i class="fa fa-user"></i> Login</h3>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form">
                            <i class="fa fa-envelope prefix"></i>
                            <input name="username" type="text" id="form2" class="form-control">
                            <label for="form2">Your email</label>
                        </div>

                        <div class="md-form">
                            <i class="fa fa-lock prefix"></i>
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
                            <p>Not a member? <a href="#">Sign Up</a></p>
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
                        <h4 class="modal-title" id="myModalLabel">Your cart</h4>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Product name</th>
                                <th>Price</th>
                                <th>Remove</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Product 1</td>
                                <td>100$</td>
                                <td><a><i class="fa fa-remove"></i></a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Product 2</td>
                                <td>100$</td>
                                <td><a><i class="fa fa-remove"></i></a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Product 3</td>
                                <td>100$</td>
                                <td><a><i class="fa fa-remove"></i></a></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>Product 4</td>
                                <td>100$</td>
                                <td><a><i class="fa fa-remove"></i></a></td>
                            </tr>
                            <tr class="total">
                                <th scope="row">5</th>
                                <td>Total</td>
                                <td>400$</td>
                            </tr>
                            </tbody>
                        </table>
                        <button class="btn btn-primary">Checkout</button>
                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
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
    </modal>

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
    <hr>
    <!--Social buttons-->
    <!--
            <div class="social-section">
                <ul>
                    <li><a class="btn-floating btn-small btn-fb"><i class="fa fa-facebook"> </i></a></li>
                    <li><a class="btn-floating btn-small btn-tw"><i class="fa fa-twitter"> </i></a></li>
                    <li><a class="btn-floating btn-small btn-gplus"><i class="fa fa-google-plus"> </i></a></li>
                    <li><a class="btn-floating btn-small btn-li"><i class="fa fa-linkedin"> </i></a></li>
                    <li><a class="btn-floating btn-small btn-git"><i class="fa fa-github"> </i></a></li>
                    <li><a class="btn-floating btn-small btn-pin"><i class="fa fa-pinterest"> </i></a></li>
                    <li><a class="btn-floating btn-small btn-ins"><i class="fa fa-instagram"> </i></a></li>
                </ul>
            </div>
    -->
    <!--/.Social buttons-->

    <!--Copyright-->
    <!--
            <div class="footer-copyright">

            </div>
    -->
    <!--/.Copyright-->

</footer>
<!--/.Footer-->

<%--<sec:authorize access="isAuthenticated()">--%>
<%--<div class="btn-group" id="userBTN">--%>
    <%--<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >--%>
            <%--${usrname.originUsername}--%>
        <%--<form:form action="logout" method="post">--%>
        <%--<button class="btn btn-primary red">Logout</button>--%>
        <%--</form:form>--%>
        <%--<c:forEach var="comm" items="${userscp.commodities}" >--%>
        <%--<th>${comm.name}</th>--%>
        <%--<th>${comm.price}</th>--%>
        <%--<th>${comm.quantity}</th>--%>
            <%--&lt;%&ndash;<th><a href="editCommodity/${commodity.id}">Edit</a></th>&ndash;%&gt;--%>
        <%--<th><a href="deleteCategory/${comm.id}">delete</a></th>--%>
        <%--</c:forEach>--%>
        <%--</sec:authorize>--%>
        <%--<sec:authorize access="!isAuthenticated()">--%>
        <%--<form:form action="loginprocesing" method="post" id="frmlogjv">--%>
        <%--<button type="button" class="btn btn-primary" id="rebBTN"  onClick='location.href="registration"'>Registration</button>--%>
        <%--</form:form>--%>
        <%--</sec:authorize>--%>

        <%--<c:forEach var="categry" items="${categs}" >--%>
        <%--<a href="/${categry.name}" class="list-group-item">${categry.name}</a>--%>
        <%--</c:forEach>--%>
        <%--<c:forEach var="commodity" items="${commodities}" >--%>

        <%--<form:form action="getOrder" method="post" id="commodityCard">--%>

        <%--<img src="${commodity.pathToImage}" class="img-fluid" alt="">--%>
        <%--<div class="priceImg" style="width: 100%; background-color: rgb(213, 0, 0);text-align:center; color: white"><h5>PRICE: ${commodity.price} UAH</h5></div>--%>

        <%--<h4 class="card-title">${commodity.name}</h4>--%>
        <%--<sec:authorize access="isAuthenticated()">--%>
        <%--<input name="quantity" value="0" type="number" placeholder="quantity">--%>
        <%--</sec:authorize>--%>
        <%--<!--Text-->--%>
        <%--<p class="card-text"> ${commodity.description}</p>--%>
        <%--<button type="submit" class="btn btn-primary waves-effect waves-light" id="BUY" form="commodityCard">BUY</button>--%>
    <%--</button>--%>
<%--</div>--%>
<!-- SCRIPTS -->
<script>
    $(".button-collapse").sideNav();
    var el = document.querySelector('.custom-scrollbar');
    Ps.initialize(el);
</script>

<script>
    $(document).ready(function() {
        $('input#input_text, textarea#textarea1').characterCounter();
    });
</script>
</body>
<script type="text/javascript" src="/js/compiled.min.js"></script>
<script type="text/javascript" src="/js/jquery-2.2.3.min.js"></script>
</html>