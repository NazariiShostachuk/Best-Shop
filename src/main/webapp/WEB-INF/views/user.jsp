<%--
  Created by IntelliJ IDEA.
  User: MackGeeker
  Date: 19.04.2017
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
</head>
<body>
${userSpecsRole}
<br>
${userSpecs}
<br>
<a href="/setRoleAdmin${userSpecs.id}">RoleToAdmin</a>
</body>
</html>
