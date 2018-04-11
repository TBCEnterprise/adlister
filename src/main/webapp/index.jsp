<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="AdLister" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container-fluid">
        <h1 class="mx-auto my-4 text-center">Welcome to the Adlister!</h1>


        <div id="carouselIndicators"
             class="mx-auto justify-content-center carousel slide d-none d-sm-block"
             data-ride="carousel" style="width: 75vw; height: auto;">
            <ol class="carousel-indicators">
                <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselIndicators" data-slide-to="1"></li>
                <li data-target="#carouselIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block img-fluid"
                         src="https://cdn.pixabay.com/photo/2017/03/27/11/58/robot-2178244_1280.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-sm-block">
                        <h5>Lorem Ipsum</h5>
                        <p>telor vidi vini vicci...</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid"
                         src="https://images.autotrader.com/scaler/653/490/hn/c/473eb455a3b14bc3a44874368ea8334d.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-sm-block">
                        <h5>Lorem Ipsum</h5>
                        <p>telor vidi vini vicci...</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid"
                         src="https://cdn.pixabay.com/photo/2018/01/28/12/37/british-shorthair-3113513_1280.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-sm-block">
                        <h5>Lorem Ipsum</h5>
                        <p>telor vidi vini vicci...</p>
                    </div>
                </div>
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
</body>
</html>
