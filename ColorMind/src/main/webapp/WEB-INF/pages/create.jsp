<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create Color Palette - ColorMind</title>
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />">
<meta name="description"
	content="Create your own color palettes using ColorMind. Choose colors, add hex codes, RGBA values, and save your custom palette.">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">ColorMind</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="<c:url value='/home.jsp' />">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value='/colors.jsp' />">Colors</a></li>
				<c:if test="${not empty user}">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/account.jsp' />">Account</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/logout' />">Logout</a></li>
				</c:if>
				<c:if test="${empty user}">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/login.jsp' />">Login</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/signup.jsp' />">Sign Up</a></li>
				</c:if>
			</ul>
		</nav>
	</header>

	<div class="container">
		<h1>Create a New Color Palette</h1>
		<form action="<c:url value='/createPalette' />" method="post">
			<div class="form-group">
				<label for="name">Palette Name:</label> <input type="text"
					class="form-control" id="name" name="name" required>
			</div>
			<div class="form-group">
				<label for="colors">Colors (Hex Codes):</label> <input type="text"
					class="form-control" id="colors" name="colors"
					placeholder="#FFFFFF, #000000" required>
			</div>
			<button type="submit" class="btn btn-success">Save Palette</button>
		</form>
	</div>

	<footer class="text-center mt-5">
		<p>
			&copy;
			<%=java.util.Calendar.getInstance().get(java.util.Calendar.YEAR)%>
			ColorMind
		</p>
	</footer>
</body>
</html>
