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
            <%--<div class="container-fluid tmargin">--%>
                <%--<div class="input-group">--%>
                    <%--<input type="text" class="form-control" placeholder="Search..." />--%>
                    <%--<span class="input-group-btn">--%>
                        <%--<button class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>--%>
                    <%--</span>--%>
                <%--</div>--%>
            <%--</div>--%>

            <ul class="nav navbar-nav side-bar">
                <li class="side-bar tmargin" ><a  data-toggle="modal" data-target="#modal-newCategory" href="#"><span class="glyphicon glyphicon-list">&nbsp;</span>New Category</a></li>
                <li class="side-bar" ><a  data-toggle="modal" data-target="#modal-newSubCategory" href="#"><span class="glyphicon glyphicon-list">&nbsp;</span>New Sub Category</a></li>
                <li class="side-bar" ><a  data-toggle="modal" data-target="#modal-newCommodity" href="#"><span class="glyphicon glyphicon-list">&nbsp;</span>New Commodity</a></li>
                <%--<li class="side-bar"><a href="#"><span class="glyphicon glyphicon-flag">&nbsp;</span>Purok</a></li>--%>
                <%--<li class="side-bar"><a href="#"><span class="glyphicon glyphicon-star">&nbsp;</span>Blotter</a></li>--%>
                <%--<li class="side-bar"><a href="#"><span class="glyphicon glyphicon-certificate">&nbsp;</span>Officials</a></li>--%>
                <%--<li class="side-bar"><a href="#"><span class="glyphicon glyphicon-signal">&nbsp;</span>Statistics</a></li>--%>
                <%--<li class="side-bar"><a href="#"><span class="glyphicon glyphicon-cog">&nbsp;</span>Settings</a></li>--%>

            </ul>
        </div>
    </div>

    <%-- *******BODY******* --%>
    <div class="col-md-9">
        <h1 class="page-header">Admin Panel</h1>
        <%-- All Categories  --%>
        <div class="card card-1">
            <div id="AllCategories1">
                <h2 class="textBlack">Categories</h2>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <%--<th>Edit</th>--%>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <c:forEach var="categories" items="${allCategories}" >
                            <tbody>
                            <tr>
                                <th>${categories.id}</th>
                                <th><a href="/${categories.name}" class="textBlack">${categories.name}</a></th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteCategory/${categories.id}" class="textBlack">delete</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>


        <%--<ul class="breadcrumb">--%>
            <%--<li><span class="glyphicon glyphicon-home">&nbsp;</span>Home</li>--%>
            <%--<li><a href="#">Dashboard</a></li>--%>
        <%--</ul>--%>
        <%--<table class="table table-hover">--%>
            <%--<thead>--%>
            <%--<th>&nbsp;</th>--%>
            <%--<th class="text-center">#</th>--%>
            <%--<th>Title</th>--%>
            <%--<th class="text-center">Author</th>--%>
            <%--<th>Status</th>--%>
            <%--</thead>--%>
            <%--<tbody>--%>
            <%--<!----%>
              <%--<tr>--%>
                <%--<td><input type="checkbox" /></td>--%>
                <%--<td class="text-center">1</td>--%>
                <%--<td width="70%">Lorem ipsum dolor sit amet, consectetur adipisicing elit...</td>--%>
                <%--<td class="text-center" width="10%">Admin</td>--%>
                <%--<td><span class="label label-info">Pending</span></td>--%>
              <%--</tr>--%>
    <%---->--%>
            <%--<!-- START CONTENT END -->--%>

            <%--<!-- DUMP CONTENT END -->--%>

            <%--</tbody>--%>

        <%--</table>--%>
   <%----%>

        <%-- All Categories  --%>
        <div class="card card-1">
            <div id="AllCategories">
                <h2 class="textBlack">Categories</h2>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <%--<th>Edit</th>--%>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <c:forEach var="categories" items="${allCategories}" >
                            <tbody>
                            <tr>
                                <th>${categories.id}</th>
                                <th><a href="#${categories.name}" class="textBlack">${categories.name}</a></th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteCategory/${categories.id}" class="textBlack">delete</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

        <%-- All SubCategories From Apple --%>

        <div class="card card-1" style="display: block">
            <div id="Apple">
                <h2 class="textBlack">Apple</h2>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <%--<th>Edit</th>--%>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <c:forEach var="Apples" items="${AllValuesFromApple}" >
                            <tbody>
                            <tr>
                                <th>${Apples.id}</th>
                                <th><a href="${Apples.name}" class="textBlack">${Apples.name}</a></th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteSubCategory/${Apples.id}" class="textBlack">delete</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

        <%-- All SubCategories From Meizu --%>

        <div class="card card-1" style="display: block">
            <div id="Meizu">
                <h2 class="textBlack">Meizu</h2>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <%--<th>Edit</th>--%>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <c:forEach var="Meizus" items="${AllValuesFromMeizu}" >
                            <tbody>
                            <tr>
                                <th>${Meizus.id}</th>
                                <th><a href="${Meizus.name}" class="textBlack">${Meizus.name}</a></th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteSubCategory/${Meizus.id}" class="textBlack">delete</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

        <%-- All SubCategories From Samsung --%>

        <div class="card card-1" style="display: block">
            <div id="Samsung">
                <h2 class="textBlack">Samsung</h2>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <%--<th>Edit</th>--%>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <c:forEach var="Samsungs" items="${AllValuesFromSamsung}" >
                            <tbody>
                            <tr>
                                <th>${Samsungs.id}</th>
                                <th><a href="${Samsungs.name}" class="textBlack">${Samsungs.name}</a></th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteSubCategory/${Samsungs.id}" class="textBlack">delete</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

        <%-- All SubCategories From Xiaomi --%>

        <div class="card card-1" style="display: block">
            <div id="Xiaomi">
                <h2 class="textBlack">Xiaomi</h2>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <%--<th>Edit</th>--%>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <c:forEach var="Xiaomies" items="${AllValuesFromXiaomi}" >
                            <tbody>
                            <tr>
                                <th>${Xiaomies.id}</th>
                                <th><a href="${Xiaomies.name}" class="textBlack">${Xiaomies.name}</a></th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteSubCategory/${Xiaomies.id}" class="textBlack">delete</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

        <%-- All SubCategories From Nokia --%>

        <div class="card card-1" style="display: block">
            <div id="Nokia">
                <h2 class="textBlack">Nokia</h2>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <%--<th>Edit</th>--%>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <c:forEach var="Nokies" items="${AllValuesFromNokia}" >
                            <tbody>
                            <tr>
                                <th>${Nokies.id}</th>
                                <th><a href="${Nokies.name}" class="textBlack">${Nokies.name}</a></th>
                                    <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                                <th><a href="deleteSubCategory/${Nokies.id}" class="textBlack">delete</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
















        <!-- ****************************************************************************************************** -->
        <!-- Modal New Category -->
        <div class="modal fade modal-ext" id="modal-newCategory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="textBlack">New Category</h4>
                    </div>
                    <!--Body-->
                        <div class="modal-body">

                            <form:form data-toggle="validator" method="post" action="/newCategory" role="form" id="addNewCategoryForm">
                                <div class="form-group row ">
                                    <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                                    <div class="col-sm-10"  >
                                        <input type="text" path="name" name="name" class="form-control" id="inputName" placeholder="Meizu" required>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                        <!--Footer-->
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" form="addNewCategoryForm">Add SubCategory</button>
                            <button type="button" class="btn btn-default ml-auto" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!--Footer-->
                </div>
                <!--/.Content-->
        </div>

        <!-- Modal New SUB Category -->
        <div class="modal fade modal-ext" id="modal-newSubCategory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <!--Content-->
                    <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h3 class="w-100"></i> New Sub Category</h3>
                        </div>
                        <!--Body-->
                        <div class="modal-body">
                            <form:form action="newSubCategory"  method="post" id="addSubCategoryForm">
                                <div class="form-group row">
                                    <label for="inputNameSubCategory" class="col-sm-3 col-form-label">Name</label>
                                    <div class="col-sm-9"  >
                                        <input type="text" path="name" name="name" class="form-control" id="inputNameSubCategory" placeholder="MX4, S5, M2 Note, 7S Plus" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputNameSubCategory" class="col-sm-3 col-form-label">Select</label>
                                    <div class="col-sm-9">
                                        <select name="categoryID" class="radio-button">
                                            <c:forEach var="category" items="${allCategories}">
                                                <option value="${category.id}">${category.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                        <!--Footer-->
                        <div class="modal-footer">
                            <%--<div class="options text-right">--%>
                                <%--<p>Forgot <a href="#">Password?</a></p>--%>
                            <%--</div>--%>
                            <button type="submit" class="btn btn-primary" id="rebBTN" form="addSubCategoryForm">Add SubCategory</button>
                            <button type="button" class="btn btn-default ml-auto" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!--/.Content-->
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
                                <div class="col-sm-9"  >
                                    <c:forEach var="subCategory" items="${AllSubCategories}">
                                        <fieldset class="form-group" name="subCategoryID">
                                            <input value="${subCategory.id}" name="subCategoryID" type="radio" id="radio${subCategory.id}">
                                            <label for="radio${subCategory.id}">${subCategory.category.name} => ${subCategory.name}</label>
                                        </fieldset>
                                    </c:forEach>
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

        <!-- Modal Cart -->
    </div>
</div>

</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>


</body>
</html>







