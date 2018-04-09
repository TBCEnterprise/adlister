<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <a class="navbar-brand" href="/ads">Adlister</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarToggler" aria-controls="navbarToggler"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse text-right" id="navbarToggler">
        <ul class="navbar-nav ml-auto mt-1 mt-lg-0 text-right">
            <li class="nav-item text-right">
                <a class="nav-link" href="/profile">Profile</a>
            </li>
            <c:if test="${sessionScope.user == null}">
                <li class="nav-item text-right">
                    <a class="nav-link" href="/register">Register</a>
                </li>
                <li class="nav-item text-right">
                    <a class="nav-link" href="/login">Login</a>
                </li>
            </c:if>
            <c:if test="${sessionScope.user != null}">
                <li class="nav-item text-right">
                    <a class="nav-link" href="/logout">Log Out</a>
                </li>
            </c:if>
        </ul>
    </div>
</nav>
<form class="form-group col-auto" action="/search" method="GET">
    <div class="input-group mb-3">
        <input class="form-control ml-auto col-auto" type="search" placeholder="Search"
               aria-label="Search">
        <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button">Search</button>
        </div>
    </div>
</form>

