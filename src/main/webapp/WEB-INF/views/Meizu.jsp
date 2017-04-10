<%--
  Created by IntelliJ IDEA.
  User: MackGeeker
  Date: 09.03.2017
  Time: 3:47
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
            <form:form action="/Meizu" method="post">
                <input type="text" id="name" name="name" placeholder="type name"/>
                <input type="submit" value="send"/>
            </form:form>

            <c:forEach var="category" items="${oneCatValues}">
                <tbody>
                <tr>
                    <th>${category.id}</th>
                    <th>${category.name}</th>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
