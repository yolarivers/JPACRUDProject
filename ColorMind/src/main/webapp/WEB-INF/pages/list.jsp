<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Color List - Color Mind</title>
    <link href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">Color Mind</a>
    </nav>

    <div class="container mt-5">
        <h1>Color List</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Hex Code</th>
                    <th>RGB Value</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="color" items="${colors}">
                    <tr>
                        <td>${color.color}</td>
                        <td>${color.hexCode}</td>
                        <td>${color.rgbValue}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/colors/update?id=${color.id}" class="btn btn-warning">Edit</a>
                            <form action="${pageContext.request.contextPath}/colors/delete" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${color.id}">
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/colors/create" class="btn btn-primary">Add New Color</a>
    </div>

    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>
</body>
</html>
