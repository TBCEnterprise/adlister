<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your listing"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="container">
        <h1>Edit your ad</h1>
        <form action="/ads/ad_edit" method="post">
            <div class="form-group">
                <input type="hidden" id="id" name="id" value="${ad.id}">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text"
                       value="<c:out value="${ad.title}"/>" >
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" ><c:out value="${ad.description}"/></textarea>
            </div>
            <div class="form-group">
                <label for="cat_id">Category</label>
                <select id="cat_id" name="cat_id" class="form-control" type="text">
                    <option name="cars" value="1">Cars</option>
                    <option name="electronics" value="2">Electronics</option>
                    <option name="furniture" value="3">Furniture</option>
                    <option name="pets" value="4">Pets</option>
                    <option name="jobs" value="5">Jobs</option>
                </select>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
