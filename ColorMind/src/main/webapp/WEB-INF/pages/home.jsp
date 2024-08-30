<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Color Mind - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container-fluid p-0">
        <div class="row no-gutters">
            <div class="col-md-6 text-white d-flex align-items-center justify-content-center" style="background-color: #FF6F61; height: 100vh;">
                <div class="text-center">
                    <h2>Looking for Color Inspiration?</h2>
                    <p>Explore our vast collection of colors and find your next favorite palette.</p>
                    <a href="colors/list" class="btn btn-light btn-lg">Explore Colors</a>
                </div>
            </div>
            <div class="col-md-6 text-white d-flex align-items-center justify-content-center" style="background-color: #00BFFF; height: 100vh;">
                <div class="text-center">
                    <h2>Manage Your Color Schemes</h2>
                    <p>Save, edit, and manage your color schemes easily with our tools.</p>
                    <a href="schemes/list" class="btn btn-light btn-lg">Manage Schemes</a>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-light text-dark text-center py-3">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

