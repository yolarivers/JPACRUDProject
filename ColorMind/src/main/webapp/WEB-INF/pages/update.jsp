<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update Color - Color Mind</title>
<link
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">Color
			Mind</a>
	</nav>

	<div class="container mt-5">
		<h1>Update Color</h1>

		
		<c:if test="${not empty error}">
			<div class="alert alert-danger" role="alert">${error}</div>
		</c:if>

		<form action="${pageContext.request.contextPath}/colors/update"
			method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="${color.id}">
			<div class="form-group">
				<label for="color">Color Name:</label> <input type="text"
					class="form-control" id="color" name="color" value="${color.color}"
					required>
			</div>
			<div class="form-group">
				<label for="hexCode">Hex Code:</label> <input type="text"
					class="form-control" id="hexCode" name="hexCode"
					value="${color.hexCode}">
			</div>
			<div class="form-group">
				<label for="rgbValue">RGB Value:</label> <input type="text"
					class="form-control" id="rgbValue" name="rgbValue"
					value="${color.rgbValue}">
			</div>
			<div class="form-group">
				<label for="complementaryColor">Complementary Color:</label> <input
					type="text" class="form-control" id="complementaryColor"
					name="complementaryColor" value="${color.complementaryColor}">
			</div>
			<div class="form-group">
				<label for="analogousColors">Analogous Colors:</label> <input
					type="text" class="form-control" id="analogousColors"
					name="analogousColors" value="${color.analogousColors}">
			</div>
			<div class="form-group">
				<label for="imageFile">Upload New Image:</label> <input type="file"
					class="form-control-file" id="imageFile" name="imageFile">
			</div>
			<div class="form-group">
				<label for="meaning">Meaning:</label>
				<textarea class="form-control" id="meaning" name="meaning">${color.meaning}</textarea>
			</div>
			<button type="submit" class="btn btn-primary">Update Color</button>
		</form>
		<a href="${pageContext.request.contextPath}/colors/list"
			class="btn btn-secondary mt-3">Back to List</a>
	</div>

	<footer class="bg-dark text-white text-center py-3 mt-5">
		<p>&copy; 2024 Color Mind. All rights reserved.</p>
	</footer>
</body>
</html>
