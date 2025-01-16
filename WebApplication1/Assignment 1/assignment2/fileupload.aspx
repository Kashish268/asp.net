<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="WebApplication1.Assignment_1.assignment2.fileupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload Example</title>
    <style>
        /* General Page Styling */
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        /* User Details Section */
       .text-container {
    text-align: center;
    margin-bottom: 20px;
    padding: 20px;
    background-color: #001f3f; /* Dark blue background */
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
    width: 90%;
    max-width: 400px;
}

.text-container p {
    margin: 0;
    font-size: 1.2rem;
    color: #ffffff; /* White text */
}

        /* File Upload Section */
        .file-upload-container {
            display: flex;
            flex-direction: column;
            
            justify-content: center;
            margin-top: 30px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.1); /* Semi-transparent white */
            border-radius: 10px;
            width: 100%;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.7);
        }

        /* File Upload Heading */
        .file-upload-container h2 {
            color: white;
            margin-bottom: 20px;
        }

        /* File Upload Styling */
        .file-upload-container input[type="file"] {
            margin-bottom: 20px;
        }

        /* Button Styling */
        #Button1 {
            padding: 10px 20px;
            background-color: #1E90FF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        #Button1:hover {
            background-color: #4682B4; /* Darker blue on hover */
        }

        /* Label Styling */
        .file-upload-container label {
            margin-top: 20px;
            font-size: 1rem;
            color: #FFD700; /* Gold color for output */
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- User Details Section -->
        <div class="text-container">
            <p>Name: Kashish Koshiya<br />Enrollment No: 22SOECE11031</p>
        </div>
        
        <!-- File Upload Section -->
        <div class="file-upload-container">
            <h2>Upload File</h2>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload File" /><br />
            <asp:Label ID="Label1" runat="server" Text="Your file status will appear here."></asp:Label>
        </div>
    </form>
</body>
</html>
