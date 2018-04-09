<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
        <div class="ad-page">
            <h1 class="title">
                <c:out value="${ad.title}"/>
            </h1>
            <span class="d-inline-block text-truncate" style="max-width: 150px;">
                <p><c:out value="${ad.description}"/> </p>
            </span>
            <p><c:out value="${ad.username}"/></p>
        </div>




</body>
</html>
