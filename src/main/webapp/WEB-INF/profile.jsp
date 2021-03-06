<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${sessionScope.user.username}'s Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container-fluid">
    <h2 class="text-center my-3">Welcome, <c:out
            value="${sessionScope.user.username}"/>!</h2>
    <jsp:include page="/WEB-INF/partials/user-ads.jsp"/>
</div>
</body>
</html>
