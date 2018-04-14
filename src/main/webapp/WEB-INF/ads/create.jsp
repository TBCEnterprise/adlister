<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="container my-5 col-lg-8 col-md-10 col-12">
        <fieldset class="card p-5 mx-auto col-10 bg-dark text-white">
            <h1>Create a new Ad</h1>
            <form action="/ads/create" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label for="cat_id">Category</label>
                    <select id="cat_id" name="cat_id" class="form-control">
                        <option name="cars" value="1">Cars</option>
                        <option name="electronics" value="2">Electronics</option>
                        <option name="furniture" value="3">Furniture</option>
                        <option name="pets" value="4">Pets</option>
                        <option name="jobs" value="5">Jobs</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="pic">Item Image</label>
                    <input type="url" id="pic" name="pic" class="form-control">
                </div>
                <input type="submit" class="btn btn-block btn-primary">
            </form>
        </fieldset>
    </div>
</div>
</body>
</html>
