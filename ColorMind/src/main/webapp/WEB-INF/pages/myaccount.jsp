<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Account - ColorMind</title>
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />">
    <meta name="description" content="Manage your ColorMind account. Update your information or delete your account.">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="<c:url value='/home.jsp' />">ColorMind</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/home.jsp' />">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/colors.jsp' />">Colors</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/account.jsp' />">Account</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/logout' />">Logout</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="container mt-5">
        <h1>My Account</h1>
        <form action="<c:url value='/updateAccount' />" method="post">
            <div class="form-group mb-3">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" value="${user.username}" required>
            </div>
            <div class="form-group mb-3">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" value="${user.email}" required>
            </div>
            <div class="form-group mb-4">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Update Account</button>
        </form>
        <form action="<c:url value='/deleteAccount' />" method="post" class="mt-3">
            <button type="submit" class="btn btn-danger">Delete Account</button>
        </form>
    </div>

    <footer class="footer bg-light text-center mt-5 py-3">
        <div class="container">
            <span class="text-muted">&copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> ColorMind. All rights reserved.</span>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
            crossorigin="anonymous"></script>
</body>
</html>