<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Color Detail - Color Mind</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
          crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home.do">Color Mind</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/home.do">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/colors/list.do">Colors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/schemes/list.do">Schemes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/about.do">About</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="display-4 text-center">Color Details</h1>

        <div class="card mt-4">
            <div class="card-header">
                <h2>${color.name}</h2>
            </div>
            <div class="card-body">
                <p><strong>Hex Code:</strong> ${color.hexCode}</p>
                <p><strong>RGB Value:</strong> ${color.rgbValue}</p>
                <div class="color-preview" 
                     style="background-color: ${color.hexCode}; height: 100px; width: 100px;"></div>
            </div>
        </div>

        <div class="mt-4">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/colors/edit.do?id=${color.id}">
                Edit Color
            </a>

            <form action="${pageContext.request.contextPath}/colors/delete.do" method="post" style="display: inline;">
                <input type="hidden" name="id" value="${color.id}">
                <button type="submit" class="btn btn-danger">Delete Color</button>
            </form>

            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/colors/list.do">Back to Colors</a>
        </div>
    </div>

    <footer class="footer bg-light mt-5 py-3">
        <div class="container text-center">
            <span class="text-muted">&copy; 2024 Color Mind. All rights reserved.</span>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
            crossorigin="anonymous"></script>
</body>
</html>
