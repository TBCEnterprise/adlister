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
<div class="container-fluid">
    <a href="/ads/create" class="create-ad btn btn-secondary">Create New Ad</a>
    <h1 class="text-center my-3">Ad listings</h1>
    <h5 class="text-center">Create an Ad or check out what we have!</h5>
    <div class="row col-12 justify-content-center mx-auto">
        <c:forEach var="ad" items="${ads}">
            <div class="card col-xl-3 col-lg-4 col-md-5 col-12 mx-3 my-3 p-2 bg-dark text-white" style="width: 18rem;">
                <a href="/ads/ad?id=${ad.id}" class="text-white">
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${ad.title}"/></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Posted by: <c:out value="${ad.username}"/></h6>
                        <h6 class="card-subtitle mb-2 text-muted">Date: <c:out value="${ad.create_date}"/></h6>
                        <p class="card-text"><c:out value="${ad.description}"/></p>
                        <c:set var="user" value="${sessionScope.user.username}"/>
                        <c:if test="${ad.username == user}">
                            <a href="/ads/ad_edit?id=${ad.id}" class="btn btn-primary btn-sm">Edit</a>
                            <a href="/ad_delete?id=${ad.id}" class="btn btn-danger btn-sm">Delete</a>
                        </c:if>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
