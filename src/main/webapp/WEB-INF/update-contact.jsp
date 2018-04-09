<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Contact Info"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="container">
        <form action="/update-contact" method="post">
            <h1>Update your contact information.</h1>
            <p><c:out value="${sessionScope.user.username}"/></p>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="phone-number">Phone number</label>
                <input id="phone-number" name="phone-number" class="form-control" type="text">
            </div>
            <h4>Enter your password to confirm the changes.</h4>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control"
                       type="password">
            </div>

            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
