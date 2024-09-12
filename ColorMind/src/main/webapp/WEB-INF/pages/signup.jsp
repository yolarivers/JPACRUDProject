<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign Up </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }
        body {
            background-color: #fddd11;
            color: #FFFFFF;
            flex: 1;
        }
        .content {
            flex: 1;
        }
        .btn-primary {
            background-color: #000000;
            border-color: #000000;
        }
        .btn-primary:hover {
            background-color: #27aece;
            border-color: #27aece;
        }
        .bg-primary {
            background-color: #2e9069  !important;
        }
        .bg-dark {
            background-color: #2e9069 !important;
        }
        footer {
           
        }
        label {
            color: #FFF;
        }
        h1 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
   <jsp:include page="navbar.jsp"></jsp:include>

    <!-- Main content area with flex-grow -->
    <div class="container-fluid content d-flex align-items-center justify-content-center">
        <div class="bg-dark text-white p-5 rounded shadow" style="max-width: 400px; width: 100%;">
            <h1 class="text-center font-weight-bold mb-4">Sign Up</h1>
            <form action="signup" method="post">
                <div class="form-group mb-3">
                    <label for="username" class="font-weight-bold">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group mb-3">
                    <label for="password" class="font-weight-bold">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group mb-3">
                    <label for="confirmPassword" class="font-weight-bold">Confirm Password:</label>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                </div>
                <div class="form-group mb-3">
                    <label for="email" class="font-weight-bold">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block font-weight-bold">Sign Up</button>
            </form>
        </div>
    </div>

   
    <footer class="bg-primary text-white text-center py-3 mt-auto">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
