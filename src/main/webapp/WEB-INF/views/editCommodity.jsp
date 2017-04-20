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
                <li class="side-bar" ><a href="#"></a></li>
                <c:forEach var="categories" items="${allCategories}" >
                    <li class="side-bar"><a href="/cat${categories.id}"><span class="glyphicon glyphicon-flag">&nbsp;</span>${categories.name}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <%-- *******BODY******* --%>
    <div class="col-md-9">
        <h1 class="page-header">${CatName.name} ${subCatName.name}</h1>
        <ul class="breadcrumb">
            <li><span class="glyphicon glyphicon-home">&nbsp;</span><a href="/admin">Home</a></li>
            <li><a href="/cat${CatName.id}">${CatName.name}</a></li>
            <li><a href="/cat${CatName.id}/scat${subCatName.id}">${subCatName.name}</a></li>
        </ul>

        <div class="formAddCommodity">
            <form:form action="./saveEditedCommodity/${EditedCommodity.id}?${_csrf.parameterName}=${_csrf.token}" method="post" id="formForEditCommodity" enctype="multipart/form-data">
                <div style="width: 250px; color:#500; min-height: 10px;"></div>
                    <div class="card card-cascade" style="width: 100%; height: 100%; margin: 0 auto;">
                        <div class="view overlay hm-white-slight" style="height: 290px;">
                            <img src="/${pathImage}" class="img-fluid" alt="Card image" style="max-height: 100%;max-width:100%; margin: 0 auto;">
                            <a>
                                <div class="mask waves-effect waves-light"></div>
                            </a>
                        </div>
                        <!--/.Card image-->
                        <!--Card content-->
                        <div class="card-block text-center" STYLE="flex: 0 0 auto; ">
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputNewNameCommodity" class="col-sm-2 col-form-label">Name</label>
                    <div class="col-sm-7"  >
                        <input type="text" path="newName" name="newName" class="form-control" id="inputNewNameCommodity" value="${EditedCommodity.name}" placeholder="${EditedCommodity.name}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputNewPriceCommodity" class="col-sm-2 col-form-label">Price</label>
                    <div class="col-sm-7"  >
                        <input type="number" path="newPrice" name="newPrice" class="form-control" id="inputNewPriceCommodity"value="${EditedCommodity.price}" placeholder="${EditedCommodity.price}" required>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="inputNewDescriptionsCommodity" class="col-sm-2 col-form-label">Descriptions</label>
                    <div class="col-sm-7"  >
                        <input type="text" path="newDescription" name="newDescription" class="form-control" id="inputNewDescriptionsCommodity" value="${EditedCommodity.description}" placeholder=" ${EditedCommodity.description}" required>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="inputNewQuantityCommodity" class="col-sm-2 col-form-label">Quantity</label>
                    <div class="col-sm-7"  >
                        <input type="number" path="newQuantity" name="newQuantity" class="form-control" id="inputNewQuantityCommodity" value="${EditedCommodity.quantity}" placeholder="${EditedCommodity.quantity}" required>
                    </div>
                </div>
                <b>${pathImage}</b>
                <div class="form-group row">
                    <label for="inputNewImageCommodity" class="col-sm-2 col-form-label">Image</label>
                    <div class="col-sm-7">
                            <span class="btn btn-default btn-file">
                                Browse <input name="newCommodityImage" path="newCommodityImage" type="file" id="inputNewImageCommodity" value="/${pathImage}" placeholder="${pathImage}">
                            </span>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" id="rebBTN" form="formForEditCommodity">Add Commodity</button>
            </form:form>
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