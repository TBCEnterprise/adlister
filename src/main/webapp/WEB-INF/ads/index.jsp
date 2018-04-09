<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h2 class="create-ad"><a href="/ads/create" >Create New Ad</a></h2>
    <h1 class="sm-col-12">Ad listings</h1>
    <small class="sm-col-12">Create an Ad below or check out what we have!</small>

    <c:forEach var="ad" items="${ads}">
        <div class="card sm-col-8 m-3" style="width: 40%;">
            <div class="card-body">
                <h5 class="card-title sm-col-3"><c:out value="${ad.title}"/></h5>
                <p class="card-text sm-col-6"><c:out value="${ad.description}"/></p>
                <small class="sm-col-3">
                    Posted By: <c:out value="${ad.username}"/>
                </small>
                <a href="/ads/ad?id=${ad.id}"
                   class="btn btn-secondary offset-sm-8" sm-col-4>Check it out</a>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
