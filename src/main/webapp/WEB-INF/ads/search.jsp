<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search Results"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/user-ads.jsp"/>
<h3>
    <c:out value="${sessionScope.message}"/>
    <c:remove var="message" scope="session"/>
</h3>
</body>
</html>
