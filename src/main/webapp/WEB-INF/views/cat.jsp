<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Admin Panel BestShop</title>
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
    <link href="/css/admin.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/admin">Admin Panel</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user">&nbsp;</span>Hello Admin</a></li>
                <li><a href="/home">Home</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="col-md-2">
        <div id="sidebar">
            <ul class="nav navbar-nav side-bar">
                <li class="side-bar tmargin" ><a  data-toggle="modal" data-target="#modal-newCategory" href="#"><span class="glyphicon glyphicon-list">&nbsp;</span>New Category</a></li>
                <li class="side-bar" ><a  data-toggle="modal" data-target="#modal-newSubCategory" href="#"><span class="glyphicon glyphicon-list">&nbsp;</span>New Sub Category</a></li>
                <li class="side-bar" ><a  data-toggle="modal" data-target="#modal-newCommodity" href="#"><span class="glyphicon glyphicon-list">&nbsp;</span>New Commodity</a></li>
                <li class="side-bar" ><a  href="#"></a></li>
                <c:forEach var="categories" items="${allCategories}" >
                    <li class="side-bar"><a href="/cat${categories.id}"><span class="glyphicon glyphicon-flag">&nbsp;</span>${categories.name}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <%-- *******BODY******* --%>
    <div class="col-md-9">
        <h1 class="page-header">${Category.name}</h1>
        <ul class="breadcrumb">
            <li><span class="glyphicon glyphicon-home">&nbsp;</span><a href="/admin">Home</a></li>
            <li><a href="/cat${Category.id}">${Category.name}</a></li>
        </ul>
        <table class="table table-hover">
            <thead>
            <th>&nbsp;</th>
            <th class="text-center">ID</th>
            <th>Title</th>
            <%--<th class="text-center">Author</th>--%>
            <th>Delete</th>
            </thead>
            <tbody>
            <c:forEach var="VallCatById" items="${AllValuesFromCatById}" >
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="text-center">${VallCatById.id}</td>
                    <td width="70%"><a href="cat${Category.id}/scat${VallCatById.id}">${VallCatById.name}</a></td>
                        <%--<td class="text-center" width="10%">Admin</td>--%>
                    <th><a href="deleteSubCategory/${VallCatById.id}" class="textBlack">delete</a></th>
                </tr>
            </c:forEach>
            <!-- START CONTENT END -->
            <!-- DUMP CONTENT END -->
            </tbody>
        </table>
    </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
</body>
</html>