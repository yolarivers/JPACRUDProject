<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Color Mind - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
          crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home.do">Color Mind</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/colors/list.do">All Colors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/schemes/list.do">Color Schemes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/about.do">About</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h1 class="mt-4">Welcome to Color Mind</h1>
        <p>Explore a world of colors and create your own schemes.</p>

        <div class="mt-4">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/colors/list.do">View All Colors</a>
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/schemes/list.do">View Color Schemes</a>
            <a class="btn btn-info" href="${pageContext.request.contextPath}/about.do">Learn More About Us</a>
        </div>

        <h2 class="mt-4">Create a New Color</h2>
        <form:form action="${pageContext.request.contextPath}/colors/create.do" method="POST">
            <div class="form-group">
                <label for="name">Color Name:</label>
                <form:input path="name" id="name" cssClass="form-control" required="true" />
            </div>
            <div class="form-group">
                <label for="hexCode">Hex Code:</label>
                <form:input path="hexCode" id="hexCode" cssClass="form-control" required="true" />
            </div>
            <div class="form-group">
                <label for="rgbValue">RGB Value:</label>
                <form:input path="rgbValue" id="rgbValue" cssClass="form-control" required="true" />
            </div>
            <button type="submit" class="btn btn-success mt-3">Create Color</button>
        </form:form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
            crossorigin="anonymous"></script>
</body>
</html>
