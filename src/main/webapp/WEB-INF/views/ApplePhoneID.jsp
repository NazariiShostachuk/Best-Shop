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
                <li class="side-bar"><a href="#"><span class="glyphicon glyphicon-flag">&nbsp;</span>Purok</a></li>
                <li class="side-bar"><a href="#"><span class="glyphicon glyphicon-star">&nbsp;</span>Blotter</a></li>
                <li class="side-bar"><a href="#"><span class="glyphicon glyphicon-certificate">&nbsp;</span>Officials</a></li>
                <li class="side-bar"><a href="#"><span class="glyphicon glyphicon-signal">&nbsp;</span>Statistics</a></li>
                <li class="side-bar"><a href="#"><span class="glyphicon glyphicon-cog">&nbsp;</span>Settings</a></li>
            </ul>
        </div>
    </div>

    <%-- *******BODY******* --%>
    <div class="col-md-9">
        <h1 class="page-header">Apple ${SubCateg.name}</h1>
        <ul class="breadcrumb">
            <li><span class="glyphicon glyphicon-home">&nbsp;</span><a href="/admin">Home</a></li>
            <li><a href="/Apple">Apple</a></li>
            <li><a href="">${SubCateg.name}</a></li>
        </ul>
        <a style="float: right" data-toggle="modal" data-target="#modal-newCommodity" href="#"><span class="glyphicon glyphicon-list" >&nbsp;</span>New Commodity</a>
        <table class="table table-hover">
            <thead>
                <th>&nbsp;</th>
                <th class="text-center">ID</th>
                <td width="40%"><b>Name</b></td>
                <td width="15%"><b>Price</b></td>
                <td width="15%"><b>Quantity</b></td>
                <th>Edit</th>
                <th>Delete</th>
            </thead>
            <tbody>
            <%--<tr >--%>
                <%--<td><input type="checkbox" /></td>--%>
                <%--<td width="30%">name</td>--%>
                <%--<td width="40%">desc</td>--%>
                <%--<td class="text-center" width="10%">Admin</td>--%>
                <%--<td><span class="label label-info">Pending</span></td>--%>
            <%--</tr>--%>
            <c:forEach var="comm" items="${combyid}" >
            <tr>
                <td><input type="checkbox" /></td>
                <td class="text-center">${comm.id}</td>
                <td>${comm.name}</td>
                <td>${comm.price}</td>
                <td>${comm.quantity}</td>
                <td><a href="${comm.subCategory.id}/edit${comm.id}">Edit</a></td>
                <td><a href="${comm.subCategory.id}/delete${comm.id}">Delete</a></td>
            </tr>
            </c:forEach>
            <!-- START CONTENT END -->
            <!-- DUMP CONTENT END -->
            </tbody>
        </table>
    </div>

</div>
<!-- Modal New Commodity -->
<div class="modal fade modal-ext" id="modal-newCommodity" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="w-100"></i> New Commodity</h3>
            </div>
            <!--Body-->
            <div class="modal-body">

                <form:form modelAttribute="newCommodity" action="./newCommodity?${_csrf.parameterName}=${_csrf.token}" method="post"
                           enctype="multipart/form-data" id="AddNewCommodity">

                    <div class="form-group row">
                        <label for="inputCubCategoryID" class="col-sm-3 col-form-label">Select</label>
                        <div class="col-sm-9" >

                                <fieldset class="form-group" name="subCategoryID">
                                    <input value="${SubCateg.id}" name="subCategoryID" type="radio" id="radio1">
                                    <label for="radio1">  ${SubCateg.name}</label>
                                </fieldset>

                            <input type="hidden" path="description" class="form-control" id="inputCubCategoryID" placeholder="" required>
                        </div>
                    </div>

                    <%--<form class="form-inline" name="subCategoryID">--%>
                    <%--<c:forEach var="subCategory" items="${AllSubCategories}">--%>
                    <%--<fieldset class="form-group" name="subCategoryID">--%>
                    <%--<input value="${subCategory.id}" name="subCategoryID" type="radio" id="radio${subCategory.id}">--%>
                    <%--<label for="radio${subCategory.id}">${subCategory.category.name} => ${subCategory.name}</label>--%>
                    <%--</fieldset>--%>
                    <%--</c:forEach>--%>
                    <%--</form>--%>

                    <%--It`s Working--%>
                    <%--<select name="subCategoryID">--%>
                    <%--<option>choose subCategory</option>--%>
                    <%--<c:forEach var="subCategory" items="${AllSubCategories}">--%>
                    <%--<option value="${subCategory.id}">${subCategory.category.name} => ${subCategory.name}</option>--%>
                    <%--</c:forEach>--%>
                    <%--</select>--%>

                    <div class="form-group row">
                        <label for="inputNameCommodity" class="col-sm-3 col-form-label">Name</label>
                        <div class="col-sm-9"  >
                            <input type="text" path="name" name="name" class="form-control" id="inputNameCommodity" placeholder="Case" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputDescriptionsCommodity" class="col-sm-3 col-form-label">Descriptions</label>
                        <div class="col-sm-9"  >
                            <input type="text" path="description" name="description" class="form-control" id="inputDescriptionsCommodity" placeholder="Very good commodity" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputPriceCommodity" class="col-sm-3 col-form-label">Price</label>
                        <div class="col-sm-9"  >
                            <input type="number" path="price" name="price" class="form-control" id="inputPriceCommodity" placeholder="300" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputQuantityCommodity" class="col-sm-3 col-form-label">Quantity</label>
                        <div class="col-sm-9"  >
                            <input type="number" path="quantity" name="quantity" class="form-control" id="inputQuantityCommodity" placeholder="5" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputImageCommodity" class="col-sm-3 col-form-label">Image</label>
                        <div class="col-sm-9">
                            <span class="btn btn-default btn-file">
                                Browse <input name="commodityImage" path="commodityImage" type="file" id="inputImageCommodity">
                            </span>
                        </div>
                    </div>
                </form:form>
            </div>
            <!--Footer-->
            <div class="modal-footer">
                <%--<div class="options text-right">--%>
                <%--<p>Forgot <a href="#">Password?</a></p>--%>
                <%--</div>--%>
                <button type="submit" class="btn btn-primary" id="rebBTN" form="AddNewCommodity">Add Commodity</button>
                <button type="button" class="btn btn-default ml-auto" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>


<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

</body>
</html>