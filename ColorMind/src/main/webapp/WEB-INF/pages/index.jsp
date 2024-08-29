<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Color Mind</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/custom.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Color Mind</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/colors">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/colors/scheme">Schemes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/about">About</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12 text-center">
            <h1 class="display-4">Welcome to Color Mind</h1>
            <p class="lead">Discover and create beautiful color schemes effortlessly.</p>
            <a href="${pageContext.request.contextPath}/colors" class="btn btn-primary btn-lg mt-3">Get Started</a>
        </div>
    </div>
</div>

<footer class="footer bg-light mt-5 py-3">
    <div class="container text-center">
        <span class="text-muted">&copy; 2024 Color Mind. All rights reserved.</span>
    </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="${pageContext.request.contextPath}/styles/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/styles/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/styles/bootstrap.min.js"></script>
</body>
</html>
