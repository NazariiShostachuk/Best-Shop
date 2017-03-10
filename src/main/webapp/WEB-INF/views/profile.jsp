<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                <a class="navbar-brand" href="/home" target="_self">Best-Shop.com.ua</a>
                <!--Links-->
                <sec:authorize access="isAuthenticated()">
                    <div class="btn-group" id="userBTN">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" > ${user.getOriginUsername()}</button>
                        <div class="dropdown-menu" id="userBTN_dropdown">
                            <form:form action="logout" method="post">
                                <button>logout</button>
                            </form:form><a href="profile">your profile</a>
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
                <!--First row-->
                <div class="row">
                    <div class="col-md-12">
                        <br>
                            <img src="${user.pathImage}" class="img-circle" id="UserProfileImg">

                        <form:form action="./saveImage?${_csrf.parameterName}=${_csrf.token}"
                                   method="post" enctype="multipart/form-data" id="svImgUsr">
                            <%--<input type="file" name="image">--%>
                            <%--<button>save image</button>--%>
                            <div class="col-lg-6 col-sm-6 col-12">
                                    <div class="input-group">
                                        <label class="input-group-btn">
                                            <span class="btn btn-primary">
                                                Browse&hellip; <input type="file" style="display: none;" name="image" multiple>
                                            </span>
                                        </label>
                                        <input type="text"  class="form-control" readonly id="imgNamePath">
                                    </div>
                            </div>
                            <button type="submit" class="btn btn-primary" id="rebBTN" form="svImgUsr">Save Image</button>
                        </form:form>
                        <br>
                        <br>
                        <br>

                            <c:forEach var="commodity" items="${user.commodities}">
                            ${commodity.name} ${commodity.price}
                            <a href="deleteCommodityFromUser/${commodity.id}">delete</a>
                            <br>
                             </c:forEach>
                    </div>
                </div>
                <!--/.First row-->
                <br>
                <hr class="extra-margins">
                <!--Second row-->
                <div class="row">
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


