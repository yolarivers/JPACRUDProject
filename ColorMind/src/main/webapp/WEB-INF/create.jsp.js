<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Create Color</title>
    <link href="<c:url value='/bootstrap/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Create New Color</h1>
        <form id="colorForm" action="${pageContext.request.contextPath}/colors/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="color">Color Name:</label>
                <input type="text" class="form-control" id="color" name="color" required>
            </div>
            <div class="form-group">
                <label for="hexCode">Hex Code:</label>
                <input type="text" class="form-control" id="hexCode" name="hexCode">
            </div>
            <div class="form-group">
                <label for="rgbValue">RGB Value:</label>
                <input type="text" class="form-control" id="rgbValue" name="rgbValue">
            </div>
            <div class="form-group">
                <label for="complementaryColor">Complementary Color:</label>
                <input type="text" class="form-control" id="complementaryColor" name="complementaryColor">
            </div>
            <div class="form-group">
                <label for="analogousColors">Analogous Colors:</label>
                <input type="text" class="form-control" id="analogousColors" name="analogousColors">
            </div>
            <div class="form-group">
                <label for="imageFile">Upload Image:</label>
                <input type="file" class="form-control-file" id="imageFile" accept="image/*" onchange="extractColor()">
            </div>
            <div class="form-group">
                <label for="meaning">Meaning:</label>
                <textarea class="form-control" id="meaning" name="meaning"></textarea>
            </div>
            <div id="colorPreview" style="width: 100px; height: 100px; border: 1px solid #000;"></div>
            <input type="hidden" id="extractedColor" name="hexCode">
            <input type="hidden" id="rgbValue" name="rgbValue">
            <button type="submit" class="btn btn-primary">Create Color</button>
        </form>
        <a href="${pageContext.request.contextPath}/colors/list" class="btn btn-secondary mt-3">Back to List</a>
    </div>
    <script src="<c:url value='/static/js/color-thief.min.js' />"></script>
    <script>
        function extractColor() {
            const fileInput = document.getElementById('imageFile');
            const reader = new FileReader();
            reader.onload = function(event) {
                const img = new Image();
                img.src = event.target.result;
                img.onload = function() {
                    const colorThief = new ColorThief();
                    const dominantColor = colorThief.getColor(img);
                    const hexColor = rgbToHex(dominantColor[0], dominantColor[1], dominantColor[2]);
                    document.getElementById('extractedColor').value = hexColor;
                    document.getElementById('rgbValue').value = dominantColor.join(',');
                    document.getElementById('colorPreview').style.backgroundColor = hexColor;
                };
            };
            reader.readAsDataURL(fileInput.files[0]);
        }

        function rgbToHex(r, g, b) {
            return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1).toUpperCase();
        }
    </script>
</body>
</html>
