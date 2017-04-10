<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>BestShopAdmin</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
        <!-- Material Design Bootstrap -->
        <link href="/css/admin.css" rel="stylesheet">
    </head>

</head>

<body>

<div id="wrapper" class="toggled">
    <div class="overlay" ></div>

    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation" >
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand">
                <a href="#">
                    Admin bar
                </a>
            </li>
            <li>
                <a href="/home"><i class="fa fa-fw fa-home"></i> Home</a>
            </li>
            <li class="dropdown open">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                    <i class="fa fa-fw fa-plus"></i>New Entity
                    <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header">Please choose item</li>
                    <li><a class="dropdown-item" data-toggle="modal" data-target="#modal-newCategory">New Category</a></li>
                    <li><a href="#">New SubCategory</a></li>
                    <li><a href="#">New Commodity</a></li>
                </ul>
            </li>
            <li>
                <a href="#"> </a>
            </li>
            <li>
                <a href="#AllCategories"><i class="fa fa-fw fa-file-o"></i> Categories</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-cog"></i> Third page</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i> Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header">Dropdown heading</li>
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-bank"></i> Page four</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-dropbox"></i> Page 5</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-twitter"></i> Last page</a>
            </li>
        </ul>
    </nav>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper" style="position: inherit">
        <%--<button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">--%>
            <%--<span class="hamb-top"></span>--%>
            <%--<span class="hamb-middle"></span>--%>
            <%--<span class="hamb-bottom"></span>--%>
        <%--</button>--%>

        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-0">


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
                                            <th><a href="deleteCategory/${Apples.id}" class="textBlack">delete</a></th>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>

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
                                            <th><a href="deleteCategory/${Meizus.id}" class="textBlack">delete</a></th>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>

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
                                            <th><a href="deleteCategory/${Samsungs.id}" class="textBlack">delete</a></th>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>

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
                                            <th><a href="deleteCategory/${Xiaomies.id}" class="textBlack">delete</a></th>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>








                    <!-- Modal New Category -->
                    <div class="modal fade modal-ext" id="modal-newCategory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
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
                                    <!--Card-->
                                    <div class="card testimonial-card" style="display:block">
                                        <!--Bacground color-->
                                        <form:form data-toggle="validator" modelAttribute="admin" method="post" action="/newCategory" role="form" id="addNewCategotyForm">
                                            <div class="form-group row  ">
                                                <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                                            <div class="col-sm-10"  >
                                                <input type="text" path="name" name="name" class="form-control" id="inputName" placeholder="Meizu" required>
                                            </div>
                                            </div>
                                        </form:form>
                                        <div class="card-block">
                                            <!--Botoom Line-->
                                            <hr>
                                            <div class="form-group">
                                                <button type="submit" FORM="addNewCategotyForm" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/.Card-->
                                </div>
                                <!--Footer-->
                            </div>
                            <!--/.Content-->
                        </div>
                    </div>

                    <!-- Modal Add New SubCategory -->
                    <%--<div class="modal fade modal-ext" id="modal-newSubCategory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
                        <%--<div class="modal-dialog modal-lg" role="document">--%>
                            <%--<!--Content-->--%>
                            <%--<div class="modal-content">--%>
                                <%--<!--Header-->--%>
                                <%--<div class="modal-header">--%>
                                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                                        <%--<span aria-hidden="true">&times;</span>--%>
                                    <%--</button>--%>
                                    <%--<h4 class="textBlack">New SubCategory</h4>--%>
                                <%--</div>--%>
                                <%--<!--Body-->--%>
                                <%--<div class="modal-body">--%>
                                    <%--<!--Card-->--%>
                                    <%--<div class="card testimonial-card" style="display:block">--%>
                                        <%--<!--Bacground color-->--%>

                                        <%--<form:form modelAttribute="subCategory" action="newSubCategory"  method="post" id="addCateg">--%>
                                            <%--<div class="md-form">--%>
                                                <%--<form:input path="name" type="text" id="form1" class="form-control"/>--%>
                                                <%--<label for="form1" class="">SubCattegory name</label>--%>
                                            <%--</div>--%>
                                            <%--<select name="categoryID" class="radio-button">--%>
                                                <%--<c:forEach var="category" items="${categories}">--%>
                                                    <%--<option value="${category.id}">${category.name}</option>--%>
                                                <%--</c:forEach>--%>
                                            <%--</select>--%>
                                            <%--<button type="submit" class="btn btn-primary" id="rebBTN" form="addCateg">Add SubCategory</button>--%>
                                        <%--</form:form>--%>




                                        <%--<div class="card-block">--%>
                                            <%--<!--Botoom Line-->--%>
                                            <%--<hr>--%>
                                            <%--<div class="form-group">--%>
                                                <%--<button type="submit" FORM="addNewCategotyForm" class="btn btn-primary">Submit</button>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<!--/.Card-->--%>
                                <%--</div>--%>
                                <%--<!--Footer-->--%>
                            <%--</div>--%>
                            <%--<!--/.Content-->--%>
                        <%--</div>--%>
                    <%--</div>--%>


                </div>
            </div>
        </div>


    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src="/js/admin.js"></script>

</body>


</html>
