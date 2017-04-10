<%--
  Created by IntelliJ IDEA.
  User: MackGeeker
  Date: 10.03.2017
  Time: 3:35
  To change this template use File | Settings | File Templates.
--%>
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

<div class="container">
    <h2>Categories</h2>
    <%--<form:form name="form1"  modelAttribute="applePost" action="./Apple?${_csrf.parameterName}=${_csrf.token}"   method="post" enctype="multipart/form-data">--%>
        <%--<h3>Select</h3>--%>
        <%--<p><input form="form1"  value="Meizu" type="checkbox" name="categoryName" /></p>--%>
        <%--<p><input path="categoryName"  value="Meizu" type="text" name="categoryName" /></p>--%>

        <%--<input type="submit" value="Submit" name="categoryName">--%>
        <%--<c:forEach  var="applePost" items="${AllValues}">--%>
            <%--<tbody>--%>
            <%--<tr>--%>
                <%--<th>${applePost.id}</th>--%>
                <%--<th>${applePost.name}</th>--%>
            <%--</tr>--%>
            <%--</tbody>--%>
        <%--</c:forEach>--%>

    <%--</form:form>--%>
    <%--<form:form name="form1"  modelAttribute="applePost" action="/Apple" method="post">--%>
        <%--<h3>Select</h3>--%>
        <%--&lt;%&ndash;<p><input form="form1"  value="Meizu" type="checkbox" name="categoryName" /></p>&ndash;%&gt;--%>
        <%--<p><input path="categoryName"  value="Meizu" type="text" name="categoryName" /></p>--%>

        <%--<input type="submit" value="Submit" name="categoryName">--%>
        <%--<c:forEach  var="applePost" items="${AllValues}">--%>
            <%--<tbody>--%>
            <%--<tr>--%>
                <%--<th>${applePost.id}</th>--%>
                <%--<th>${applePost.name}</th>--%>
            <%--</tr>--%>
            <%--</tbody>--%>
        <%--</c:forEach>--%>

    <%--</form:form>--%>

    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <%--<th>Edit</th>--%>
                <%--<th>Delete</th>--%>
            </tr>
            </thead>
            <c:forEach var="appleGet" items="${AllCategories}" >
                <tbody>
                <tr>
                    <th>${appleGet.id}</th>
                    <th>${appleGet.name}</th>
                    <th><a href="allValuesFromSubCategory/${appleGet.id}">All</a></th>
                        <%--<th><a href="editCommodity/${commodity.id}">Edit</a></th>--%>
                        <%--<th><a href="deleteCategory/${category.id}">delete</a></th>--%>
                <c:forEach var="apGet" items="${AllValuesId}">
                    <tbody>
                    <tr>
                        <th>${apGet.id}</th>
                        <th>${apGet.name}</th>
                    </tr>
                    </tbody>
                </c:forEach>
                </tr>
                </tbody>
            </c:forEach>
            <c:forEach var="apGet" items="${AllValues}">
                <tbody>
                <tr>
                    <th>${apGet.id}</th>
                    <th>${apGet.name}</th>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
