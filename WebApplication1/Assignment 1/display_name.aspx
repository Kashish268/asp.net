<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display_name.aspx.cs" Inherits="WebApplication1.Assignment_1.display_name1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Styled Form</title>
    <style>
        /* General body styling */
        body {
            background-color: #000; /* Black background */
            color: #f5f5f5; /* Light text color */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
        }

        /* Centering and styling the form container */
        #form1 {
            margin-top:150px;
            background-color: #1a1a1a; /* Dark gray container */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            width: 300px;
            margin-bottom: 20px;
        }

        /* Heading styles */
        h3 {
            margin: 0;
            margin-bottom: 10px;
            color: #ffffff; /* Bright white */
        }

        h5 {
            margin: 0;
            color: #dddddd; /* Slightly dimmer white */
        }

        /* Input field styling */
        input[type="text"] {
            width: 93%;
            padding: 10px;
            margin-bottom: 15px;
            border: none;
            border-radius: 5px;
            background-color: #333; /* Dark gray */
            color: #f5f5f5; /* Light text */
        }

        input[type="text"]::placeholder {
            color: #bbb; /* Placeholder text */
        }

        /* Button styling */
        input[type="submit"], button {
            width: 100%;
            background-color: #007bff; /* Light blue */
            color: #fff; /* White text */
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover, button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        /* Question box styling */
        
    </style>
</head>
<body>
    <!-- Question Box -->
    

    <!-- Form -->
    <form id="form1" runat="server">
        <h5><p style="margin-bottom:5px;">Enter Your Name:</p></h5>
        <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter your name"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True"></asp:Label>
    </form>

    <!-- Navigation Buttons -->
   
</body>
</html>
