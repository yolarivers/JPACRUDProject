<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Update Color</title>
    <link href="<c:url value='/bootstrap/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Update Color</h1>
        <form action="${pageContext.request.contextPath}/colors/update" method="post">
            <input type="hidden" name="id" value="${color.id}">
            <div class="form-group">
                <label for="color">Color Name:</label>
                <input type="text" class="form-control" id="color" name="color" value="${color.color}" required>
            </div>
            <div class="form-group">
                <label for="hexCode">Hex Code:</label>
                <input type="text" class="form-control" id="hexCode" name="hexCode" value="${color.hexCode}">
            </div>
            <div class="form-group">
                <label for="rgbValue">RGB Value:</label>
                <input type="text" class="form-control" id="rgbValue" name="rgbValue" value="${color.rgbValue}">
            </div>
            <div class="form-group">
                <label for="complementaryColor">Complementary Color:</label>
                <input type="text" class="form-control" id="complementaryColor" name="complementaryColor" value="${color.complementaryColor}">
            </div>
            <div class="form-group">
                <label for="analogousColors">Analogous Colors:</label>
                <input type="text" class="form-control" id="analogousColors" name="analogousColors" value="${color.analogousColors}">
            </div>
            <div class="form-group">
                <label for="imageUrl">Image URL:</label>
                <input type="text" class="form-control" id="imageUrl" name="imageUrl" value="${color.imageUrl}">
            </div>
            <div class="form-group">
                <label for="meaning">Meaning:</label>
                <textarea class="form-control" id="meaning" name="meaning">${color.meaning}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Update Color</button>
        </form>
        <a href="${pageContext.request.contextPath}/colors/list" class="btn btn-secondary mt-3">Back to List</a>
    </div>
</body>
</html>
