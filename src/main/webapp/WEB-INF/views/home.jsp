<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>BEST SHOP</title>
    <!-- Material Design Bootstrap -->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="/css/materialize.min.css" rel="stylesheet">
    <link href="/css/home.css" rel="stylesheet">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<header>
<div class="navbar-fixed">
<nav>
    <div class="nav-wrapper light-blue darken-1">
        <a href="/" class="brand-logo" style="margin-left: 8px; ">Best Shop</a>
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
        <a href="#" data-activates="mobile-right-menu" class="button-collapse right"><i class="material-icons">more_vert</i></a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <sec:authorize access="!isAuthenticated()">
                <li><a href="#modalSignIn" class="modal-trigger">Sign in</a></li>
                <li><a href="#modalSignUp" class="modal-trigger">Sign up</a></li>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <li><a href="#" class="dropdown-button" data-activates=''>Hello ${usrname.originUsername}</a></li>
                <li><a href="#modalCart" class="dropdown-button">Cart</a></li>
                <li><a href="#" class="button"><form:form action="logout" method="post">
                     <button class="btn btn-primary blue darken-2" style="margin: 0 auto; padding: 0 8px 0 8px; width: 100%">Logout</button></form:form></a></li>
            </sec:authorize>
        </ul>
        <ul class="side-nav" id="mobile-right-menu">
            <sec:authorize access="!isAuthenticated()">
                <li><a href="#modalSignIn" class="modal-trigger">Sign in</a></li>
                <li><a href="#modalSignUp" class="modal-trigger">Sign up</a></li>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <li><a href="#" class="dropdown-button" data-activates=''>Hello ${usrname.originUsername}</a></li>
                <li><a href="#modalCart" class="dropdown-button">Cart</a></li>
                <li><a href="#" class="button"><form:form action="logout" method="post">
                    <button class="btn btn-primary blue darken-2" style="margin: 0 auto; padding: 0 8px 0 8px; width: 100%">Logout</button></form:form></a></li>
            </sec:authorize>
        </ul>
    </div>
</nav>
</div>
</header>
<main>
    <div class="row">
        <div class="col s2 m3" style="padding-left: 3px;">
            <div class="mySideNav col m2">
                <div class="collection">
                    <c:forEach var="cat" items="${categ}">
                        <a class="collection-item" href="/category/${cat.id}">${cat.name}</a>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="col s12 m9">
            <!-- Teal page content  -->
            <c:forEach items="${commodities}" var="comm" >
            ${comm.name}<br>
            ${comm.id}<br>
            ${comm.description}<br>
            ${comm.pathToImage}<br>
            </c:forEach>
            <c:forEach items="${commodities}" var="comm" >
                ${comm.name}<br>
                ${comm.id}<br>
                ${comm.description}<br>
                ${comm.pathToImage}<br>
            </c:forEach>
            <c:forEach items="${commodities}" var="comm" >
                ${comm.name}<br>
                ${comm.id}<br>
                ${comm.description}<br>
                ${comm.pathToImage}<br>
            </c:forEach> <c:forEach items="${commodities}" var="comm" >
            ${comm.name}<br>
            ${comm.id}<br>
            ${comm.description}<br>
            ${comm.pathToImage}<br>
        </c:forEach> <c:forEach items="${commodities}" var="comm" >
            ${comm.name}<br>
            ${comm.id}<br>
            ${comm.description}<br>
            ${comm.pathToImage}<br>
        </c:forEach> <c:forEach items="${commodities}" var="comm" >
            ${comm.name}<br>
            ${comm.id}<br>
            ${comm.description}<br>
            ${comm.pathToImage}<br>
        </c:forEach> <c:forEach items="${commodities}" var="comm" >
            ${comm.name}<br>
            ${comm.id}<br>
            ${comm.description}<br>
            ${comm.pathToImage}<br>
        </c:forEach>
            <c:forEach items="${commodities}" var="comm" >
                ${comm.name}<br>
                ${comm.id}<br>
                ${comm.description}<br>
                ${comm.pathToImage}<br>
            </c:forEach>
            <c:forEach items="${commodities}" var="comm" >
                ${comm.name}<br>
                ${comm.id}<br>
                ${comm.description}<br>
                ${comm.pathToImage}<br>
            </c:forEach>
            <c:forEach items="${commodities}" var="comm" >
                ${comm.name}<br>
                ${comm.id}<br>
                ${comm.description}<br>
                ${comm.pathToImage}<br>
            </c:forEach>

        </div>

    </div>

</main>

<!-- Modal Structure -->
<div id="modalSignIn" class="modal modal-fixed-footer">
    <div class="modal-content">
        <h4>Sign IN!</h4>
        <form:form action="loginprocesing" method="post" id="formLoginModal">
            <div class="row">
                <div class="input-field col s12">
                    <input id="usernameLogIn" path="username"  name="username" type="text" required>
                    <label for="usernameLogIn">UserName</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="password" type="password" path="password" name="password" required>
                    <label for="password">Password</label>
                </div>
            </div>
        </form:form>
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Close</a>
        <button class="btn waves-effect waves-light" type="submit" name="loginprocesing" form="formLoginModal" >Sign IN!
            <i class="material-icons right">send</i>
        </button>
    </div>
</div>

<!-- Modal Structure -->
<div id="modalSignUp" class="modal modal-fixed-footer">
    <div class="modal-content">
        <h4>Sign UP!</h4>
        <form:form modelAttribute="" action="registration" method="post" id="regForm">
            <div class="row">
                <div class="input-field col s12">
                    <input id="usernameUp" path="username"  name="username" type="text" required>
                    <label for="usernameUp">UserName</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="emailUp" path="email"  name="email" type="email" required>
                    <label for="emailUp">Email</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="phoneUp" path="phoneNumber"  name="phoneNumber" type="number" required>
                    <label for="phoneUp">Phone Number</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="passwordUp" path="password"  name="password" type="password" required>
                    <label for="passwordUp">Password</label>
                </div>
            </div>
        </form:form>
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Close</a>
        <button class="btn waves-effect waves-light" type="submit" name="user" form="regForm" >Sign UP!
            <i class="material-icons right">send</i>
        </button>
    </div>
</div>

<!-- Cart Structure -->
<div id="modalCart" class="modal modal-fixed-footer">
    <div class="modal-content">
        <h4>Cart</h4>

    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Close</a>
        <button class="btn waves-effect waves-light" type="submit" name="user" form="regForm" >Sign UP!
            <i class="material-icons right">send</i>
        </button>
    </div>
</div>

<script type="text/javascript" src="/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/js/materialize.min.js"></script>
<script>
    $('.button-collapse').sideNav({
            menuWidth: 200, // Default is 300
            edge: 'left', // Choose the horizontal origin
            closeOnClick: false, // Closes side-nav on <a> clicks, useful for Angular/Meteor
            draggable: true // Choose whether you can drag to open on touch screens
        }
    );
    $('.dropdown-button').dropdown({
            inDuration: 300,
            outDuration: 225,
            constrainWidth: true, // Does not change width of dropdown to that of the activator
            hover: true, // Activate on hover
            gutter: 15, // Spacing from edge
            belowOrigin: true, // Displays dropdown below the button
            alignment: 'left', // Displays dropdown with edge aligned to the left of button
            stopPropagation: true // Stops event propagation
        }
    );
    $(document).ready(function(){
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
        $('.modal').modal();
    });
</script>
</body>
</html>