<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Color Details</title>
    
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Color Mind</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/WEB-INF/pages/index.jsp">Home</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/colors/list">Colors</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Schemes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <h1 class="display-4 text-center">Color Details</h1>
    
    <div class="row mt-4">
        <div class="col-md-4">
            <div id="colorPreview" class="rounded" style="background-color: ${color.hexCode}; height: 200px; border: 1px solid #000;"></div>
        </div>
        <div class="col-md-8">
            <h2>${color.name}</h2>
            <p><strong>Hex Code:</strong> ${color.hexCode}</p>
            <p><strong>RGB Value:</strong> ${color.rgbValue}</p>
            <p><strong>Meaning:</strong> ${color.meaning}</p>
            <p><strong>Shade:</strong> ${color.shade}</p>
            <p><strong>Tint:</strong> ${color.tint}</p>
            <h3 class="mt-4">Associated Schemes</h3>
            <ul class="list-group">
                <c:forEach var="scheme" items="${color.schemes}">
                    <li class="list-group-item">${scheme.name}</li>
                </c:forEach>
            </ul>
            <div class="mt-4">
                <a href="${pageContext.request.contextPath}/colors/update?id=${color.id}" class="btn btn-warning">Edit</a>
                <a href="${pageContext.request.contextPath}/colors/delete?id=${color.id}" class="btn btn-danger">Delete</a>
            </div>
        </div>
    </div>
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
