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
    <h1 class="mx-auto my-4 text-center">Welcome to the Adlister!</h1>
    <div class="container bg-dark">
        <div id="carouselIndicators"
             class="mx-auto justify-content-center carousel slide d-block"
             data-ride="carousel" style="width: 75vw; height: auto;">
            <ol class="carousel-indicators">
                <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselIndicators" data-slide-to="1"></li>
                <li data-target="#carouselIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block img-fluid" src="https://images.pexels.com/photos/576739/pexels-photo-576739.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350" alt="First slide">
                        <div class="carousel-caption d-none d-sm-block bg-dark">
                            <h5>Here are our latest posts</h5>
                            <p>Check them out!</p>
                        </div>
                </div>
                <c:forEach var="ad" items="${last}">
                    <div class="carousel-item">
                        <img class="d-block img-fluid"
                             src="${ad.pic}" alt="First slide">
                        <div class="carousel-caption d-none d-sm-block bg-dark">
                            <h5>${ad.title}</h5>
                            <p>${ad.description}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
<jsp:include page="/WEB-INF/partials/user-ads.jsp"/>
</body>
</html>
