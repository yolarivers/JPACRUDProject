<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Colors</title>
    
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
                <a class="nav-link" href="#">Colors</a>
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
    <h1 class="display-4 text-center">Available Colors</h1>
    
    <table class="table table-hover mt-4">
        <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Color Name</th>
                <th scope="col">Hex Code</th>
                <th scope="col">RGB Value</th>
                <th scope="col">Color Preview</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="color" items="${colors}">
                <tr>
                    <th scope="row">${color.id}</th>
                    <td>${color.name}</td>
                    <td>${color.hexCode}</td>
                    <td>${color.rgbValue}</td>
                    <td>
                        <div id="colorPreview" style="background-color: ${color.hexCode}; width: 50px; height: 50px;"></div>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/colors/detail?id=${color.id}" class="btn btn-info btn-sm">View</a>
                        <a href="${pageContext.request.contextPath}/colors/update?id=${color.id}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="${pageContext.request.contextPath}/colors/delete?id=${color.id}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
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
