<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container my-5 col-lg-8 col-md-10 col-12">
    <fieldset class="card p-5 mx-auto col-10 bg-dark text-white">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
                <p class="text-danger">
                    <c:out value="${sessionScope.message}"/>
                    <c:remove var="message" scope="session"/>
                </p>
            </div>
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input id="firstName" name="firstName" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input id="lastName" name="lastName" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="phone">Phone number</label>
                <input id="phone" name="phone" class="form-control" type="tel">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
                <p class="text-danger">
                    <c:out value="${sessionScope.emessage}"/>
                    <c:remove var="emessage" scope="session"/>
                </p>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control"
                       type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control"
                       type="password">
            </div>
            <%--added by mccool--%>
            <div>
                <h3> Choose File to Upload in Server </h3>

                <input type="file" name="file" />
                <input type="submit" value="upload" />

            </div>
            <%--|||||||||||||--%>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </fieldset>

</div>
</body>
</html>
