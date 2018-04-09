<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Password" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <form action="/update-pass" method="post">
        <div class="form-group">
            <input hidden="<c:out value="${username}"/>">
            <h5>Please enter your new password</h5>
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <h5>Please enter your new password</h5>
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>



