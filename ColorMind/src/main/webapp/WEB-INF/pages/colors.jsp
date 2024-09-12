<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Colors </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.umd.js"></script> <!-- Color Thief -->
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container mt-5">
        <h1 class="text-center font-weight-bold mb-4" style="color: #6A1B9A;">Update Color</h1>
        
        <!-- Color Thief Section -->
        <div class="row justify-content-center mb-4">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header text-center bg-dark text-white">
                        <h3>Color Thief - Extract Dominant Color</h3>
                    </div>
                    <div class="card-body text-center">
                        <input type="file" id="colorImage" accept="image/*" class="form-control mb-3">
                        <canvas id="canvas" style="display:none;"></canvas>
                        <div id="dominantColor" class="p-3 rounded" style="background-color: #E91E63; color: white;">
                            Dominant Color: <span id="colorHex">#E91E63</span>
                        </div>
                        <button class="btn btn-primary mt-3" onclick="extractColor()">Extract Color</button>
                    </div>
                </div>
            </div>
        </div>
        
       
        <div class="bg-dark text-white p-5 rounded shadow" style="max-width: 600px; margin: 0 auto;">
            <form action="<c:url value='colorsupdate.do' />" method="post">
                <input type="hidden" name="id" value="${color.id}">
                
                <div class="form-group mb-3">
                    <label for="name" class="font-weight-bold">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${color.name}" required>
                </div>
                
                <div class="form-group mb-3">
                    <label for="hexCode" class="font-weight-bold">Hex Code:</label>
                    <input type="text" class="form-control" id="hexCode" name="hexCode" value="${color.hexCode}" required>
                </div>
                
                <div class="form-group mb-3">
                    <label for="rgbValue" class="font-weight-bold">RGBA:</label>
                    <input type="text" class="form-control" id="rgbValue" name="rgbValue" value="${color.rgbValue}" required>
                </div>
                
                <div class="form-group mb-3">
                    <label for="meaning" class="font-weight-bold">Meaning:</label>
                    <input type="text" class="form-control" id="meaning" name="meaning" value="${color.meaning}" required>
                </div>

                <button type="submit" class="btn btn-primary btn-block font-weight-bold">Update Color</button>
            </form>
            <a href="<c:url value='colorslist.do' />" class="btn btn-secondary btn-block mt-3">Cancel</a>
        </div>
    </div>

    <footer class="bg-primary text-white text-center py-3 mt-5">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    <script>
        // Function to extract the dominant color using Color Thief
        function extractColor() {
            const colorThief = new ColorThief();
            const img = document.getElementById('colorImage');
            const canvas = document.getElementById('canvas');
            const ctx = canvas.getContext('2d');
            const dominantColorDiv = document.getElementById('dominantColor');
            const colorHexSpan = document.getElementById('colorHex');

            if (img.files && img.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    const image = new Image();
                    image.onload = function() {
                        canvas.width = image.width;
                        canvas.height = image.height;
                        ctx.drawImage(image, 0, 0);
                        
                        
                        const dominantColor = colorThief.getColor(canvas);
                        const hexColor = rgbToHex(dominantColor[0], dominantColor[1], dominantColor[2]);
                        dominantColorDiv.style.backgroundColor = hexColor;
                        colorHexSpan.innerText = hexColor;
                    };
                    image.src = e.target.result;
                };
                reader.readAsDataURL(img.files[0]);
            }
        }

    
        function rgbToHex(r, g, b) {
            return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1);
        }
    </script>

</body>
</html>
