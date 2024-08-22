<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>COLOR MIND</title>
    <link href="<c:url value='/bootstrap/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Color Mind</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/colors/list">Colors</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mt-5">
        <div class="jumbotron text-center">
            <h1 class="display-4">Welcome to Color Mind</h1>
            <p class="lead">Explore the world of colors, their meanings, and harmonies.</p>
            <a href="/colors/list" class="btn btn-primary btn-lg">Explore Colors</a>
        </div>
    </div>
    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>
    <script src="<c:url value='/static/js/color-thief.min.js' />"></script>
</body>
</html>
