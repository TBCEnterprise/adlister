<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Password"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="container my-5 col-lg-8 col-md-10 col-12">
        <fieldset class="card p-5 mx-auto col-10 bg-dark text-white">
            <form action="/update-pass" method="post">
                <div class="form-group">
                    <input hidden="<c:out value="${username}"/>">
                    <h5>Please enter your new password</h5>
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control"
                           type="password">
                </div>
                <div class="form-group">
                    <h5>Please enter your new password</h5>
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password"
                           class="form-control" type="password">
                    <p class="text-danger"><c:out value="${sessionScope.message}"/></p>
                </div>
                <input type="submit" class="btn btn-primary btn-block">
            </form>
        </fieldset>
    </div>
</div>
</body>
</html>



