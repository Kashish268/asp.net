<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temperture_conversation.aspx.cs" Inherits="WebApplication1.Assignment_1.temperture_conversation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Conversion</title>
    <style>
        /* General body styling */
        body {
            background-color: #121212; /* Dark black background */
            color: #ffffff; /* Light text color */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            justify-content: center;
        }

        /* Container styling */
        #container {
            text-align: center;
        }

        /* Question styling */
        

        /* Form container styling */
        form {
            background-color: #1e1e1e; /* Slightly lighter black for contrast */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            width: 350px;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Title styling */
        form span {
            font-size: 24px;
            font-weight: bold;
            color: #f5f5f5; /* Light gray text */
            margin-bottom: 15px;
            display: block;
        }

        /* Input field styling */
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 15px 0;
            border: 1px solid #333;
            border-radius: 5px;
            background-color: #2e2e2e; /* Dark gray */
            color: #ffffff; /* Light text */
            font-size: 16px;
        }

        input[type="text"]::placeholder {
            color: #aaaaaa; /* Placeholder color */
        }

        /* Radio button styling */
        input[type="radio"] {
            margin: 10px 5px;
            accent-color: #007bff; /* Blue accent for radio buttons */
        }

        label {
            font-size: 14px;
            color: #cccccc; /* Light gray for labels */
            margin-right: 10px;
        }

        /* Button styling */
        input[type="submit"],
        button {
            background-color: #007bff; /* Bright blue button */
            color: #ffffff; /* White text */
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
            font-size: 16px;
        }

        input[type="submit"]:hover,
        button:hover {
            background-color: #0056b3; /* Darker blue for hover */
        }

        /* Label for result */
        .result-label {
            font-size: 16px;
            font-weight: bold;
            color: #ffffff; /* White text for results */
            margin-top: 15px;
            display: block;
        }

       
    </style>
</head>
<body>
    <div id="container">
        <!-- Question -->
       
        <!-- Form -->
        <form id="form1" runat="server">
            <span>Temperature Conversion</span>
            Enter Value:
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="Enter temperature"></asp:TextBox>
            <br />
            <label for="RadioButton1">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Celsius to Fahrenheit" GroupName="Conversion" />
            </label><br />
            <label for="RadioButton2">
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Fahrenheit to Celsius" GroupName="Conversion" />
            </label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert" />
            <asp:Label ID="Label1" runat="server" Text="Result will appear here" CssClass="result-label"></asp:Label>
        </form>

        <!-- Navigation Buttons -->
        
    </div>
</body>
</html>
