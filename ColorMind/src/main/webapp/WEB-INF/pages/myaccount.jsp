<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>My Account - Color Mind</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>


    <div class="container mt-5">
        <h1 class="text-center font-weight-bold mb-4">My Account</h1>
        <div class="bg-dark text-white p-5 rounded shadow" style="max-width: 600px; margin: 0 auto;">
            <c:if test="${!empty sessionScope.loggedInUser}">
                <p class="text-center mb-4">Welcome, <strong>${sessionScope.loggedInUser.username}</strong></p>
            </c:if>
            <form action="<c:url value='updateAccount.do' />" method="post">
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
            <form action="<c:url value='deleteAccount.do' />" method="post" class="mt-3">
                <button type="submit" class="btn btn-danger btn-block font-weight-bold">Delete Account</button>
            </form>
        </div>
    </div>

    <footer class="bg-primary text-white text-center py-3 mt-5">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
