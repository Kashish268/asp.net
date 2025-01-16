<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adrotater.aspx.cs" Inherits="WebApplication1.Assignment_1.assignment2.Adrotater" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ad Rotator</title>
    <style>
        /* Set the entire page background to black */
        body {
            background-color: black;
            margin: 0;
            font-family: Arial, sans-serif;
            color: white; /* Set text color to white for visibility */
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh; /* Ensures content is centered vertically */
        }

        /* Style for the name container */
        .text-container {
            text-align: center;
            margin-bottom: 20px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.1); /* Semi-transparent background */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Box shadow for text box */
        }


        .text-container p {
            margin: 0 0 0;
            font-size: 1rem;
            color: #cccccc;
        }

        /* Style for the AdRotator container */
        .ad-container {
            margin-top: 20px;
            padding: 10px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Box shadow for AdRotator box */
        }

        .ad-container img {
            display: block;
            max-width: 100%;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Name and other information -->
        <div class="text-container">
            <p>Name : Kashish Koshiya<br />Enrollment No : 22SOECE11031</p>
        </div>

        <!-- AdRotator section -->
        <div class="ad-container">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Assignment 1/assignment2/XMLFile2.xml" />
        </div>
    </form>
</body>
</html>
