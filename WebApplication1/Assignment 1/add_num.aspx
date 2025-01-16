<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_num.aspx.cs" Inherits="WebApplication1.Assignment_1.add_num" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Addition Calculator</title>
    <style>
        /* Body styling */
        body {
            background-color: #000000; /* Pure black background */
            color: #ffffff; /* White text */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Form container */
        form {
            background-color: #1a1a1a; /* Dark gray container */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.7);
            width: 300px;
        }

        /* Title styling */
        h2 {
            color: #ffffff; /* White color for the title */
            text-align: center;
            margin-bottom: 20px;
        }

        /* Label styling */
        label {
            display: block;
            margin-bottom: 5px;
            font-size: 16px;
            text-align: left;
        }

        /* Input field styling */
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #333;
            border-radius: 5px;
            background-color: #2e2e2e; /* Dark gray */
            color: #ffffff; /* White text */
            font-size: 16px;
        }

        input[type="text"]::placeholder {
            color: #aaaaaa; /* Light gray placeholder */
        }

        /* Dropdown styling */
        select{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #333;
            border-radius: 5px;
            background-color: #2e2e2e; /* Dark gray */
            color: #ffffff; /* White text */
            font-size: 16px;
        }

        /* Button styling */
        input[type="submit"]
        {
            background-color: #007bff; /* Bright blue */
            color: #ffffff; /* White text */
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            text-align: center;
        }

        input[type="submit"]:hover
        {
            background-color: #0056b3; /* Darker blue */
        }

        /* Label styling for result */
        asp:Label {
            margin-top: 15px;
            display: block;
            font-size: 16px;
            font-weight: bold;
            color: #00ff00; /* Bright green for result */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Addition Calculator</h2>

        <label for="TextBox1">Enter Num 1:</label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter first number"></asp:TextBox>

        <label for="TextBox2">Enter Num 2:</label>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter second number"></asp:TextBox>

        <label for="DropDownList1">Select Operation:</label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Addition" Value="Add"></asp:ListItem>
            <asp:ListItem Text="Subtraction" Value="Subtract"></asp:ListItem>
            <asp:ListItem Text="Multiplication" Value="Multiply"></asp:ListItem>
            <asp:ListItem Text="Division" Value="Divide"></asp:ListItem>
        </asp:DropDownList><br /><br />

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" />
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text="Result will appear here" Visible="False"></asp:Label>
    </form>
</body>
</html>
