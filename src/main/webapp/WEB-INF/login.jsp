<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container my-5 col-lg-8 col-md-10 col-12">
        <fieldset class="card p-5 mx-auto col-10 bg-dark text-white">
            <h1>Please Log In</h1>
            <form action="/login" method="POST">
                <div class="form-group my-3">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                    <p class="text-danger">
                        <c:out value="${sessionScope.noUser}"/>
                        <c:remove var="noUser" scope="session"/>
                    </p>
                </div>
                <div class="form-group my-3">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <p class="text-danger">
                    <c:out value="${sessionScope.message}"/>
                    <c:remove var="message" scope="session"/>
                </p>
                <input type="submit" class="btn btn-primary btn-inline-block"
                       value="Log In">
                <a href="/register"><input type="submit" class="btn btn-primary btn-inline-block" value="Register"></a>
            </form>
        </fieldset>
    </div>
</body>
</html>
