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
            <p><c:out value="${sessionScope.user.username}"/>, please make any changes
                you would like. If you would like to keep whats currently there, just
                leave it as is and we will make sure it is safe.
            </p>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text"
                       value="<c:out value="${sessionScope.user.email}"/>">
            </div>
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input id="firstName" name="firstName" class="form-control"
                       type="text" value="<c:out
                       value="${sessionScope.user.firstName}"/>">
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input id="lastName" name="lastName" class="form-control" type="text"
                       value="<c:out
                       value="${sessionScope.user.lastName}"/>">
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone number</label>
                <input id="phoneNumber" name="phoneNumber" class="form-control"
                       type="tel" value="<c:out value="${sessionScope.user.phoneNumber}"/>">
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
