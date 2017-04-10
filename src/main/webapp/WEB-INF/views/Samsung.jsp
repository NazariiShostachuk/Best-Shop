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
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/compiled.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2>Brand</h2>
    <!-- Nav tabs -->
    <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-tabs md-pills pills-primary flex-column" role="tablist">
                <c:forEach var="category" items="${AllCategories}">
                    <form:form action="/Samsung" method="post">
                        <th><button STYLE="margin: 0 auto; width: 100%" name="name" type="submit" value="${category.name}" class="btn btn-primary">${category.name}</button> <th>
                    </form:form>
                </c:forEach>
            </ul>
        </div>
        <div class="col-md-7">
            <!-- Tab panels -->
            <div class="tab-content vertical">
                <!--Panel 1-->
                <div class="tab-pane fade in show active" id="panel21" role="tabpanel">
                    <br>
                    <div class="list-group">
                        <h2>Model${SubCateg.name}</h2>
                        <c:forEach var="values" items="${oneCatValues}">
                            <form:form action="/Samsung" method="post">
                                <button STYLE="margin: 0 auto; width: 100%" name="name" type="submit" value="${values.id}" class="btn btn-primary">${values.name}</button>
                            </form:form>
                        </c:forEach>
                    </div>
                </div>
                <!--/.Panel 1-->
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/js/compiled.min.js"></script>
</body>
</html>
