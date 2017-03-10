<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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
    <!-- Material Design Google Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<header>
    <!--Navbar-->
    <nav class="navbar navbar-dark primary-color-dark">
        <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#collapseEx">
            <i class="fa fa-bars"></i>
        </button>
        <div class="container">
            <!--Collapse content-->
            <div class="collapse navbar-toggleable-xs" id="collapseEx">
                <!--Navbar Brand-->
                <a class="navbar-brand" href="home" target="_self" id="top-section">Best-Shop.com.ua</a>
                <!--Search form-->
                <sec:authorize access="isAuthenticated()">
                    <div class="btn-group" id="userBTN">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                    ${usrname.originUsername}
                    </button>
                    <div class="dropdown-menu" id="userBTN_dropdown">
                        <div class="list-group" >
                            <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
                            <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
                            <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>

                        <form:form action="logout" method="post">
                            <button class="btn btn-primary red">Logout</button>
                        </form:form>
                        </div>
                    </div>
                    </div>
                    <div class="btn-group" id="userBTN">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                            Basket
                        </button>
                        <div class="dropdown-menu" id="basket">
                            <div class="container">
                                <h2>Categories</h2>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Delete</th>
                                        </tr>
                                        </thead>
                                        <c:forEach var="comm" items="${userscp.commodities}" >
                                            <tbody>
                                            <tr>
                                                <th>${comm.name}</th>
                                                <th>${comm.price}</th>
                                                <th>${comm.quantity}</th>
                                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                                <th><a href="deleteCategory/${comm.id}">delete</a></th>
                                            </tr>
                                            </tbody>
                                        </c:forEach>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </sec:authorize>
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
                <form class="form-inline">
                    <input class="form-control" type="text" placeholder="Search">
                </form>
            </div>
            <!--/.Collapse content-->

        </div>

    </nav>
    <!--/.Navbar-->

</header>

<main>

    <!--Main layout-->
    <div class="container" >
        <div class="row">
            <!--Sidebar-->
            <div class="col-md-4">
                <div class="widget-wrapper">
                    <h4>Categories:</h4>
                    <br>
                    <div class="list-group">
                        <c:forEach var="categry" items="${categs}" >
                            <a href="/${categry.name}" class="list-group-item">${categry.name}</a>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!--/.Sideba-->

            <!--Main column-->
            <div class="col-md-8">

                <!--First row-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="divider-new">
                            <h2 class="h2-responsive">What's new?</h2>
                        </div>
                        <!--Carousel Wrapper-->
                        <div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
                            <!--Indicators-->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-2" data-slide-to="1"></li>
                                <li data-target="#carousel-example-2" data-slide-to="2"></li>
                            </ol>
                            <!--/.Indicators-->
                            <!--Slides-->
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img src="https://www.imore.com/sites/imore.com/files/styles/xlarge_wm_brw/public/field/image/2015/12/macbook-pro-clear-hero.jpg?itok=iobSBCKk">
                                    <div class="carousel-caption">
                                        <h4>New collection</h4>
                                        <br>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://www.noutbuka.net/upload/iblock/a1d/a1dd44c1efd112a2bb1c77ddc0dbae08.jpg" alt="Second slide">
                                    <div class="carousel-caption">
                                        <h4>Get discount!</h4>
                                        <br>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://www.imore.com/sites/imore.com/files/styles/xlarge/public/field/image/2013/11/mac_desktops_apple_art.jpg?itok=LR2345AE">
                                    <div class="carousel-caption">
                                        <h4>Only now for 10$</h4>
                                        <br>
                                    </div>
                                </div>
                            </div>
                            <!--/.Slides-->

                            <!--Controls-->
                            <a class="left carousel-control" href="#carousel-example-2" role="button" data-slide="prev">
                                <span class="icon-prev" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-2" role="button" data-slide="next">
                                <span class="icon-next" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                            <!--/.Controls-->
                        </div>
                        <!--/.Carousel Wrapper-->
                    </div>
                </div>
                <!--/.First row-->
                <br>


            </div>

            <br>
            <!--Second row-->
            <div class="row">

                <c:forEach var="commodity" items="${commodities}" >

                    <form:form action="getOrder" method="post" id="commodityCard">
                        <!--Card-->
                        <div class="card">
                            <input name="commodityId" type="hidden" value="${commodity.id}">
                            <!--Card image-->

                            <div class="view overlay hm-white-slight">
                                <img src="${commodity.pathToImage}" class="img-fluid" alt="">
                                <a href="#">
                                    <div class="mask"></div>
                                </a>
                                <div class="priceImg" style="width: 100%; background-color: rgb(213, 0, 0);text-align:center; color: white"><h5>PRICE: ${commodity.price} UAH</h5></div>
                            </div>
                            <!--/.Card image-->

                            <!--Card content-->
                            <div class="card-block">
                                <!--Title-->
                                <h4 class="card-title">${commodity.name}</h4>
                                <sec:authorize access="isAuthenticated()">
                                    <input name="quantity" value="0" type="number" placeholder="quantity">
                                </sec:authorize>
                                <!--Text-->
                                <p class="card-text"> ${commodity.description}</p>
                                <button type="submit" class="btn btn-primary waves-effect waves-light" id="BUY" form="commodityCard">BUY</button>
                                    <%--<a href="" class="btn btn-primary">BUY</a>--%>
                            </div><!--/.Card content-->

                        </div>
                        <!--/.Card-->
                    </form:form>

                </c:forEach>

            </div>
            <!--/.Second row-->
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

    <div class="fixed-action-btn smooth-scroll" style="bottom: 45px; right: 24px;">
        <a href="#top-section" class="btn-floating btn-large red">
            <i class="fa fa-arrow-up"></i>
        </a>
    </div>


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