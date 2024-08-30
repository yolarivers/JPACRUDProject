<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Color Mind - Home</title>
    <link href="<c:url value='/bootstrap/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
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
                    <a class="nav-link" href="/colors/list">Colors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/signup">Register</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid p-0">
        <div class="row no-gutters">
            <div class="col-md-6 text-white d-flex align-items-center justify-content-center" style="background-color: #FF6F61; height: 100vh;">
                <div class="text-center">
                    <h2>Looking for Color Inspiration?</h2>
                    <p>Explore our vast collection of colors and find your next favorite palette.</p>
                    <a href="/colors/list" class="btn btn-light btn-lg">Explore Colors</a>
                </div>
            </div>
            <div class="col-md-6 text-white d-flex align-items-center justify-content-center" style="background-color: #00BFFF; height: 100vh;">
                <div class="text-center">
                    <h2>Manage Your Color Schemes</h2>
                    <p>Save, edit, and manage your color schemes easily with our tools.</p>
                    <a href="/schemes/list" class="btn btn-light btn-lg">Manage Schemes</a>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-light text-dark text-center py-3">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

    <script src="<c:url value='/bootstrap/bootstrap.bundle.min.js' />"></script>
</body>
</html>

