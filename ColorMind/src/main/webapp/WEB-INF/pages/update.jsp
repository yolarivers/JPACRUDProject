<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Update - Color Mind</title>
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
        <h1 class="text-center font-weight-bold mb-4">Update Color</h1>
        <div class="bg-dark text-white p-5 rounded shadow" style="max-width: 600px; margin: 0 auto;">
            <form action="<c:url value='/update' />" method="post">
                <div class="form-group mb-3">
                    <label for="name" class="font-weight-bold">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group mb-3">
                    <label for="hex" class="font-weight-bold">Hex Code:</label>
                    <input type="text" class="form-control" id="hex" name="hex" required>
                </div>
                <div class="form-group mb-3">
                    <label for="rgba" class="font-weight-bold">RGBA:</label>
                    <input type="text" class="form-control" id="rgba" name="rgba" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block font-weight-bold">Update</button>
            </form>
        </div>
    </div>

    <footer class="bg-primary text-white text-center py-3 mt-5">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

    <script src="<c:url value='/bootstrap/bootstrap.bundle.min.js' />"></script>
</body>
</html>
