<%--
  Created by IntelliJ IDEA.
  User: MackGeeker
  Date: 17.11.2016
  Time: 3:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>commodity</title>
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

<div class="row" style="margin: 0 auto; width: 50%;">
    <div class="card" style="padding: 20px;margin: 0 auto;">
        <div style="text-align: center;">
            <button type="button" class="btn btn-primary" id="admBTN1"  onClick='location.href="categoty"'>Add Categoty</button>
            <button type="button" class="btn btn-primary" id="admBTN2"  onClick='location.href="subCategory"'>Add SubCategory</button>
            <button type="button" class="btn btn-primary" id="admBTN3"  onClick='location.href="commodity"'>Add Commodity</button>
            <%--<button type="button" class="btn btn-primary" id="admBTN4"  onClick='location.href="country"'>Registration</button>--%>
        </div>
    </div>
</div>
<br>


<div class="row">

    <div class="card" style="width: 40%;margin:0 auto;margin-bottom:25px; padding: 30px;">


        <div class="formAddCommodity">
        <form:form action="./saveEditedCommodity/${commodityForEdit.id}?${_csrf.parameterName}=${_csrf.token}" method="post" id="formForEditCommodity" enctype="multipart/form-data">
            <div style="width: 250px; color:#500; min-height: 10px;"></div>
            <div class="md-form">
                <input name="newName" type="text" id="form1" class="form-control" value="${commodityForEdit.name}">
                <label for="form1" class="">Commodity name</label>
            </div>
            <div class="md-form">
                <input name="newPrice" type="text" id="form1" class="form-control" value="${commodityForEdit.price}">
                <label for="form1" class="">Price</label>
            </div>
            <div class="md-form">
                <input name="newDescription" type="text" id="form1" class="form-control" value="${commodityForEdit.description}">
                <label for="form1" class="">Descriptions</label>
            </div>
            <br>
            <br>
            <br>
            <div class="md-form">
                <input name="newQuantity" type="number" id="form1" class="form-control" value="${commodityForEdit.quantity}">
                <label for="form1" class="">Quantity</label>
            </div>
            <br>
            <br>
            <br>
            <div class="col-lg-6 col-sm-6 col-12">
                <div class="input-group">
                    <label class="input-group-btn">
                    <span class="btn btn-primary">
                        Browse&hellip; <input type="file" style="display: none;" name="newCommodityImage" multiple>
                    </span>
                    </label>
                    <input type="text"  class="form-control" readonly id="imgNamePath">
                </div>
            </div>

            <button type="submit" class="btn btn-primary" id="rebBTN" form="formForEditCommodity">Add Commodity</button>


        </form:form>
        </div>
    </div>

</div>


        <!-- JQuery -->
        <script type="text/javascript" src="/js/jquery-2.2.3.min.js"></script>

        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="/js/tether.min.js"></script>

        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="/js/bootstrap.min.js"></script>

        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="/js/mdb.min.js"></script>

        <script type="text/javascript" src="/js/my.js"></script>


</body>
</html>