<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Update - Color Mind</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>


    <div class="container mt-5">
        <h1 class="text-center font-weight-bold mb-4">Update Color</h1>
        <div class="bg-dark text-white p-5 rounded shadow" style="max-width: 600px; margin: 0 auto;">
            <form action="<c:url value='update.do' />" method="post">
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

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
