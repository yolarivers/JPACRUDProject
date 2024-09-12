<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Color Mind</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">
    <style>
     
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

    
        .content {
            flex: 1;
        }

        footer {
            background-color: #000;
            color: white;
            text-align: center;
            padding: 10px;
            width: 100%;
            position: relative;
            bottom: 0;
        }
    </style>
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>


    <div class="content">
        <div class="container-fluid p-0">
            <div class="row no-gutters">
                <div class="col-md-6 text-white d-flex align-items-center justify-content-center" style="background-color: #27aece; height: 85vh;">
                    <div class="text-center">
                        <h2>Looking for Color Inspiration?</h2>
                        <p>Explore our vast collection of colors and find your next favorite palette.</p>
                        <a href="colorslist.do" class="btn btn-light btn-lg" style="color: #000000;">Explore Colors</a>
                    </div>
                </div>
                <div class="col-md-6 text-white d-flex align-items-center justify-content-center" style="background-color: #f70000; height: 85vh;">
                    <div class="text-center">
                        <h2>Manage Your Color Schemes</h2>
                        <p>Save, edit, and manage your color schemes easily with our tools.</p>
                        <a href="colorslist.do" class="btn btn-light btn-lg" style="color: #000000;">Manage Schemes</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

   
    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; 2024 Color Mind. All rights reserved.</p>
    </footer>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
