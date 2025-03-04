<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.Assignment_1.display_name" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 1</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #001f3f; /* Dark blue background */
            color: #ffffff; /* White text for better readability */
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #000000; /* Black navbar */
        }
        .navbar .navbar-brand, .navbar .nav-link {
            color: #ffffff !important; /* White text for navbar items */
        }
        .navbar-toggler {
            border: none;
        }
        .navbar-toggler-icon {
            background-image: url('data:image/svg+xml;charset=UTF8,%3Csvg xmlns%3D%27http://www.w3.org/2000/svg%27 viewBox%3D%270 0 30 30%27%3E%3Cpath stroke%3D%27rgba%28255,255,255,1%29%27 stroke-width%3D%272%27 stroke-linecap%3D%27round%27 stroke-miterlimit%3D%2710%27 d%3D%27M4 7h22M4 15h22M4 23h22%27/%3E%3C/svg%3E');
        }
        .navbar-nav {
            margin-left: auto; /* Push all nav items to the right */
        }
        .details-container {
            margin: 60px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            text-align: center;
            color: #001f3f; /* Match text color with the body */
        }
        .details-container h2 {
            color: #001f3f;
            font-size: 2rem;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">ASP.NET</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="firstpage.aspx">Assignment 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">Assignment 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Assignment 3</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Assignment 4</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="details-container">
        <h2>Assignments</h2>
        <p><strong>Name:</strong>Kashish Koshiya</p>
        <p><strong>Enrollment No:</strong>22SOECE11031</p>
        <p><strong>Roll No:</strong>30</p>
        <p><strong>Subject:</strong>ASP.NET</p>

    </div>

</body>
</html>
