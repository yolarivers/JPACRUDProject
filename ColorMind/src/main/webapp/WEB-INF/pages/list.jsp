<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Color List</title>
    <link href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Color List</h1>
        <a href="${pageContext.request.contextPath}/colors/create" class="btn btn-primary mb-3">Add New Color</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Color</th>
                    <th>Hex Code</th>
                    <th>RGB Value</th>
                    <th>Complementary Color</th>
                    <th>Analogous Colors</th>
                    <th>Image</th>
                    <th>Meaning</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="color" items="${colors}">
                    <tr>
                        <td>${color.id}</td>
                        <td>${color.color}</td>
                        <td style="background-color: ${color.hexCode};">${color.hexCode}</td>
                        <td>${color.rgbValue}</td>
                        <td>${color.complementaryColor}</td>
                        <td>${color.analogousColors}</td>
                        <td><img src="${color.imageUrl}" alt="${color.color}" style="max-width: 100px;"></td>
                        <td>${color.meaning}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/colors/update?id=${color.id}" class="btn btn-warning">Update</a>
                            <form action="${pageContext.request.contextPath}/colors/delete" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${color.id}">
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/" class="btn btn-secondary mt-3">Back to Home</a>
    </div>
</body>
</html>