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
    <div class="container my-5 col-lg-8 col-md-10 col-12">
        <fieldset class="card p-5 mx-auto col-10 bg-dark text-white">
            <h1 class="title">
                <c:out value="${ad.title}"/>
            </h1>
            <span class="d-inline-block text-truncate" style="max-width: 150px;">
                        <p><c:out value="${ad.description}"/> </p>
                    </span>
            <p><c:out value="${ad.username}"/></p>
        </fieldset>
    </div>
</div>
</body>
</html>
