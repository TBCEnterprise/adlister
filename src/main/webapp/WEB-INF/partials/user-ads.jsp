<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="user" value="${sessionScope.user.username}"/>
<h3 class="text-center my-3">Current listings</h3>
<a href="/ads/create" class="btn btn-dark ml-3">Create new ad</a>
<div class="row col-12 justify-content-center mx-auto">
    <c:forEach var="ad" items="${ads}">
        <div class="card col-md-4 col-12 mx-3 my-3 p-2 bg-dark text-white"
             style="width: 18rem;">
            <input type="hidden" value="${ad.id}" name="id" id="id">
            <a href="/ads/ad?id=${ad.id}" class="text-white deco-text-none">
                <div class="card-body">
                    <h5 class="card-title"><c:out value="${ad.title}"/></h5>
                    <p class="card-text"><c:out value="${ad.description}"/></p>

                    <h6 class="card-subtitle mb-2 text-muted">Posted by: <c:out
                            value="${ad.username}"/></h6>

                    <h6 class="card-subtitle mb-2 text-muted">Date: <c:out
                            value="${ad.create_date}"/></h6>

                    <h6 class="card-subtitle mb-2 text-muted">Category: <c:out
                            value="${ad.cat_title}"/></h6>

                    <c:if test="${ad.username == user}">
                        <a href="/ads/ad_edit?id=${ad.id}"
                           class="btn btn-primary btn-sm">Edit</a>
                        <a href="/ads/delete?id=${ad.id}"
                           class="btn btn-danger btn-sm">Delete</a>
                    </c:if>
                </div>
            </a>
        </div>
    </c:forEach>
</div>

