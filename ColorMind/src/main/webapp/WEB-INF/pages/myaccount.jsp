<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>My Account - Color Mind</title>
    <link href="<c:url value='/bootstrap/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand font-weight-bold" href="#">Color Mind</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="/colors/list">Colors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center font-weight-bold mb-4">My Account</h1>
        <div class="bg-dark text-white p-5 rounded shadow" style="max-width: 600px; margin: 0 auto;">
            <c:if test="${!empty sessionScope.loggedInUser}">
                <p class="text-center mb-4">Welcome, <strong>${sessionScope.loggedInUser.username}</strong></p>
            </c:if>
            <form action="<c:url value='/updateAccount' />" method="post">
                <div class="form-group mb-3">
                    <label for="username" class="font-weight-bold">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" value="${sessionScope.loggedInUser.username}" required>
                </div>
                <div class="form-group mb-3">
                    <label for="email" class="font-weight-bold">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="${sessionScope.loggedInUser.email}" required>
                </div>
                <div class="form-group mb-4">
                    <label for="password" class="font-weight-bold">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block font-weight-bold">Update Account</button>
            </form>
            <form action="<c:url value='/deleteAccount' />" method="post" class="mt-3">
                <button type="submit" class="btn btn-danger btn-block font-weight-bold">Delete Account</button>
            </form>
        </div>
    </div>

    <footer class="bg-primary text-white text-center py-3 mt-5">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

    <script src="<c:url value='/bootstrap/bootstrap.bundle.min.js' />"></script>
</body>
</html>
