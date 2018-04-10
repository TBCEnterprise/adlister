<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="userAdContainer">
    <c:forEach items="${ads}" var="ad">
            <div class="card-body">
                <h5 class="card-title sm-col-3"><c:out value="${ad.title}"/></h5>
                <p class="card-text sm-col-6"><c:out value="${ad.description}"/></p>
                <small class="sm-col-3">
                    Posted By: <c:out value="${ad.username}"/>
                </small>
                <small>
                    Date: <c:out value="${ad.create_date}"/>
                </small>
                <a href="/ads/ad?id=${ad.id}"
                   class="btn btn-secondary offset-sm-8" sm-col-4>Check it out</a>
            </div>
    </c:forEach>
</div>
