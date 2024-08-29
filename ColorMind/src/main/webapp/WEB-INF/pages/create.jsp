<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Color</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/home.do">Color Mind</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
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
    <h1 class="display-4 text-center">Create New Color</h1>
    
    <form action="${pageContext.request.contextPath}/colors/create.do" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Color Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="hexCode">Hex Code</label>
            <input type="text" class="form-control" id="hexCode" name="hexCode" required>
        </div>
        <div class="form-group">
            <label for="rgbValue">RGB Value</label>
            <input type="text" class="form-control" id="rgbValue" name="rgbValue">
        </div>
        <div class="form-group">
            <label for="imageFile">Color Image</label>
            <input type="file" class="form-control-file" id="imageFile" name="imageFile">
        </div>
        <button type="submit" class="btn btn-primary">Create Color</button>
    </form>
</div>

<footer class="footer bg-light mt-5 py-3">
    <div class="container text-center">
        <span class="text-muted">&copy; 2024 Color Mind. All rights reserved.</span>
    </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
