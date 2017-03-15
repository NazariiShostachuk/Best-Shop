<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<a href="home">home</a>

<div class="row" style="margin: 0 auto; width: 50%;">
    <div class="card" style="padding: 20px;margin: 0 auto;">
        <div style="text-align: center;">
            <button type="button" class="btn btn-primary" id="admBTN1"  onClick='location.href="category"'>Add Category</button>
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
    <form:form modelAttribute="commodity" action="./newCommodity?${_csrf.parameterName}=${_csrf.token}" method="post"
               enctype="multipart/form-data" id="addComm">
        <select name="subCategoryID">
            <option>choose subCategory</option>
            <c:forEach var="subCategory" items="${subcategories}">
                <option value="${subCategory.id}">${subCategory.category.name} => ${subCategory.name}</option>
            </c:forEach>
        </select>
        <br>
        <br>

        <%--<form:errors path="name"/>--%>

        <form:errors path="description"/>

        <form:errors path="price"/>

        <form:errors path="quantity"/>




        <div class="md-form">
                <form:input path="name" type="text" id="form1" class="form-control"/>
                <label for="form1" class="">Commodity name</label>
        </div>
        <div class="md-form">
                 <form:input path="description" type="text" id="form1" class="form-control"/>
                <label for="form1" class="">Descriptions</label>
        </div>
        <div class="md-form">
                 <form:input path="price" type="text" id="form1" class="form-control"/>
                <label for="form1" class="">Price</label>
        </div>
        <div class="md-form">
              <form:input path="quantity" type="number" id="form1" class="form-control"/>
             <label for="form1" class="">Quantity</label>
        </div>

        <div class="col-lg-6 col-sm-6 col-12">
            <div class="input-group">
                <label class="input-group-btn">
                    <span class="btn btn-primary">
                        Browse&hellip; <input type="file" style="display: none;" name="commodityImage" multiple>
                    </span>
                </label>
                <input type="text"  class="form-control" readonly id="imgNamePath">
            </div>
        </div>

        <button type="submit" class="btn btn-primary" id="rebBTN" form="addComm">Add Commodity</button>


    </form:form>
    </div>
    </div>

</div>

<div class="container">
    <h2>Commodity</h2>

    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quatity</th>
                <th>Picture</th>
                <th>Description</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>
                     <c:forEach var="commodity" items="${commodities}" >
            <tbody>
            <tr>
                <th>${commodity.id}</th>
                <th>${commodity.name}</th>
                <th>${commodity.price}</th>
                <th>${commodity.quantity}</th>
                <th><img src="${commodity.pathToImage}" class="imgAdminCommodity" alt=""></th>
                <th>${commodity.description}</th>
                <th><a href="editCommodity/${commodity.id}">Edit</a></th>
                <th><a href="deleteCommodity/${commodity.id}">Delete</a></th>
            </tr>
            </tbody>
                     </c:forEach>
        </table>
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