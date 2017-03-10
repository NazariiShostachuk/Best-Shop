<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddCategory</title>
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

        <div class="formAddCategory">
            <form:form modelAttribute="subCategory" action="newSubCategory"  method="post" id="addCateg">
                <div class="md-form">
                    <form:input path="name" type="text" id="form1" class="form-control"/>
                    <label for="form1" class="">SubCattegory name</label>
                </div>
                <select name="categoryID" class="radio-button">
                    <c:forEach var="category" items="${categories}">
                        <option value="${category.id}">${category.name}</option>
                    </c:forEach>
                </select>
                <button type="submit" class="btn btn-primary" id="rebBTN" form="addCateg">Add SubCategory</button>
            </form:form>
        </div>
    </div>
</div>
<div class="container">
    <h2>SubCategories</h2>

    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr>
                <th>Category</th>
                <th>Subcategory</th>
                <%--<th>Edit</th>--%>
                <%--<th>Delete</th>--%>
            </tr>
            </thead>
            <c:forEach var="subcategory" items="${subCategories}">
            <tbody>
            <tr>
                <th>${subcategory.category.name}</th>
                <th>${subcategory.name}</th>
            <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                <th><a href="deleteSubCategory/${subcategory.id}">delete</a></th>
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