<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${sessionScope.user.username}'s Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <p style="color: green;">${confirmation}</p>
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
        <a href="/update-pass">Update Password</a>
        <a href="/update-contact">Update Contact Info</a>
    </div>
    <jsp:include page="/WEB-INF/partials/user-ads.jsp"/>

</body>
</html>
