<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login - Color Mind</title>
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
            background-color: #f70000;
        }
        .content {
            flex: 1;
        }
        h1 {
            color: #FFFFFF;
        }
        .btn-primary {
            background-color: #27aece;
            border-color: #27aece;
        }
        .btn-primary:hover {
            background-color: #2e9069;
            border-color: #2e9069;
        }
        .bg-primary {
            background-color: #000000!important;
        }
        .bg-dark {
            background-color: black !important;
        }
        footer {
            background-color: #27aece;
        }
    </style>
</head>
<body>
   <jsp:include page="navbar.jsp"></jsp:include>

  
    <div class="container content mt-5">
        <h1 class="text-center font-weight-bold mb-4">Login</h1>

     
        <c:if test="${not empty loginError}">
            <div class="alert alert-danger" role="alert">
                ${loginError}
            </div>
        </c:if>

        <div class="bg-dark text-white p-5 rounded shadow" style="max-width: 400px; margin: 0 auto;">
            <form action="<c:url value='login' />" method="post">
                <div class="form-group mb-3">
                    <label for="username" class="font-weight-bold">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group mb-3">
                    <label for="password" class="font-weight-bold">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block font-weight-bold">Login</button>
            </form>
        </div>
    </div>

 
    <footer class="bg-primary text-white text-center py-3">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
