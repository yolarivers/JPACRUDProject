<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Create Your Color Palette</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.umd.js"></script>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }
        .content {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .primary-bg {
            background-color: #6A1B9A;
        }
        .secondary-bg {
            background-color: #E91E63;
        }
        .dominant-color-box {
            background-color: #E91E63;
            color: white;
        }
        .btn-extract {
            background-color: #6A1B9A;
            border-color: #6A1B9A;
            color: white;
        }
        .btn-add-palette {
            background-color: #E91E63;
            border-color: #E91E63;
            color: white;
        }
        .form-container {
            min-height: 100%;
        }
        footer {
            background-color: #275BCE;
        }

       
        h1 {
            font-size: 1.5rem; 
        }

   
        #colorsInPalette {
            display: flex;
            flex-wrap: wrap;
            gap: 10px; 
        }

        .color-item {
            position: relative; 
            flex: 1 1 calc(25% - 10px); 
            max-width: calc(25% - 10px); 
            padding: 10px;
            text-align: center;
            color: #fff;
            border-radius: 5px;
            white-space: nowrap; 
            overflow: hidden;
            text-overflow: ellipsis;
        }

  
        .delete-btn {
            position: absolute;
            top: 5px;
            right: 5px;
            background-color: #fff;
            border: none;
            color: #000;
            font-size: 0.8rem;
            padding: 2px 5px;
            cursor: pointer;
            border-radius: 50%;
        }

        @media (max-width: 767px) {
            .card, .btn, .p-5 {
                padding: 1.5rem;
            }

            .container {
                padding: 1rem;
            }

         
            .color-item {
                flex: 1 1 calc(50% - 10px); 
                max-width: calc(50% - 10px);
            }
        }
    </style>
</head>
<body>
   <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container-fluid content">
        <div class="row justify-content-center">
            <!-- Extract Color Section -->
            <div class="col-md-5 col-sm-12 mb-4 form-container">
                <div class="card h-100">
                    <div class="card-header text-center primary-bg text-white">
                        <h1>Extract Colors From An Image And Add To Palette</h1>
                    </div>
                    <div class="card-body text-center">
                        <input type="file" id="colorImage" accept="image/*" class="form-control mb-3">
                        <canvas id="canvas" style="display:none;"></canvas>
                        <div id="dominantColor" class="p-3 dominant-color-box rounded">
                            Dominant Color: <span id="colorHex">#E91E63</span>
                        </div>
                        <button class="btn btn-extract mt-3" onclick="extractColor()">Extract Colors</button>
                        <button class="btn btn-add-palette mt-3" onclick="addToPalette()">Add to Palette</button>
                    </div>
                </div>
            </div>

        
            <div class="col-md-5 col-sm-12 mb-4 form-container">
                <div class="card h-100">
                    <div class="card-header text-center primary-bg text-white">
                        <h1>Create a New Color Palette</h1>
                    </div>
                    <div class="card-body">
                        <form action="<c:url value='savePalette.do' />" method="post">
                            <div class="form-group mb-3">
                                <label for="paletteName" class="font-weight-bold">Palette Name:</label>
                                <input type="text" class="form-control" id="paletteName" name="paletteName" required>
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">Colors in Palette:</label>
                                <div id="colorsInPalette" class="p-3 bg-light text-dark rounded">
                                    <!-- Colors added from Color Thief will appear here in a grid -->
                                </div>
                                <input type="hidden" id="colors" name="colors" value="">
                            </div>

                            <button type="submit" class="btn btn-pink btn-block font-weight-bold">Save Palette</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

    <script>
        const colorPalette = [];
        const colorThief = new ColorThief();

        function extractColor() {
            const imgInput = document.getElementById('colorImage');
            const canvas = document.getElementById('canvas');
            const ctx = canvas.getContext('2d');
            const dominantColorDiv = document.getElementById('dominantColor');
            const colorHexSpan = document.getElementById('colorHex');

            if (imgInput.files && imgInput.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    const image = new Image();
                    image.onload = function() {
                        canvas.width = image.width;
                        canvas.height = image.height;
                        ctx.drawImage(image, 0, 0);

                      
                        const palette = colorThief.getPalette(canvas, 6);
                        const hexColors = palette.map(color => rgbToHex(color[0], color[1], color[2]));

                       
                        const firstColor = hexColors[0];
                        dominantColorDiv.style.backgroundColor = firstColor;
                        colorHexSpan.innerText = firstColor;

                       
                        const colorsInPaletteDiv = document.getElementById('colorsInPalette');
                        colorsInPaletteDiv.innerHTML = ''; 

                        hexColors.forEach(hexColor => {
                            if (!colorPalette.includes(hexColor)) {
                                colorPalette.push(hexColor);
                                
                              
                                const span = document.createElement('span');
                                span.classList.add('color-item');
                                span.style.backgroundColor = hexColor;
                                span.innerText = hexColor;

                             
                                const deleteBtn = document.createElement('button');
                                deleteBtn.classList.add('delete-btn');
                                deleteBtn.innerText = 'X';
                                deleteBtn.onclick = function() {
                                    deleteColor(hexColor, span);
                                };

                                span.appendChild(deleteBtn);
                                colorsInPaletteDiv.appendChild(span);
                            }
                        });

                        document.getElementById('colors').value = colorPalette.join(",");

                     
                        const brightness = (palette[0][0] * 299 + palette[0][1] * 587 + palette[0][2] * 114) / 1000;
                        dominantColorDiv.style.color = brightness > 128 ? 'black' : 'white';
                    };
                    image.src = e.target.result;
                };
                reader.readAsDataURL(imgInput.files[0]);
            }
        }

        function addToPalette() {
            const colorHex = document.getElementById('colorHex').innerText;
            if (!colorPalette.includes(colorHex)) {
                colorPalette.push(colorHex);

         
                const span = document.createElement('span');
                span.classList.add('color-item');
                span.style.backgroundColor = colorHex;
                span.innerText = colorHex;

            
                const deleteBtn = document.createElement('button');
                deleteBtn.classList.add('delete-btn');
                deleteBtn.innerText = 'X';
                deleteBtn.onclick = function() {
                    deleteColor(colorHex, span);
                };

                span.appendChild(deleteBtn);
                document.getElementById('colorsInPalette').appendChild(span);

                document.getElementById('colors').value = colorPalette.join(",");
            }
        }

        function deleteColor(colorHex, element) {
        
            const index = colorPalette.indexOf(colorHex);
            if (index > -1) {
                colorPalette.splice(index, 1);
            }

            element.remove();

   
            document.getElementById('colors').value = colorPalette.join(",");
        }

   
        function rgbToHex(r, g, b) {
            return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1).toUpperCase();
        }
    </script>

</body>
</html>
