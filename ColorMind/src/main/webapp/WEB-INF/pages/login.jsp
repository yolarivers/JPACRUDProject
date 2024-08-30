<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login - Color Mind</title>
<link
	href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css"
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
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title text-center">Login</h5>
						<c:if test="${not empty error}">
							<div class="alert alert-danger" role="alert">${error}</div>
						</c:if>
						<form action="${pageContext.request.contextPath}/login"
							method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									class="form-control" id="username" name="username" required>
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</form>
						<p class="mt-3 text-center">
							<a href="${pageContext.request.contextPath}/signup">Don't
								have an account? Sign up here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="bg-dark text-white text-center py-3 mt-5">
		<p>&copy; 2024 Color Mind. All rights reserved.</p>
	</footer>
</body>
</html>
