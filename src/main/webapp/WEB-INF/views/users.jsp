<%--
  Created by IntelliJ IDEA.
  User: MackGeeker
  Date: 19.04.2017
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USERS</title>

</head>
<body>
<c:forEach items="${allUsers}" var="users">
    <a href="/admin/users/${users.id}">${users.username}</a>
</c:forEach>

</body>
</html>
