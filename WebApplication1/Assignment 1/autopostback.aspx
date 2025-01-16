<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autopostback.aspx.cs" Inherits="WebApplication1.Assignment_1.autopostback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoPostBack Example</title>
    <style>
        body {
            background-color: black; /* Dark background */
            font-family: Arial, sans-serif;
            color: #ffffff;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 30%;
            margin: 100px auto 50px; /* Adjust the margin-top value here */
            background-color: #1a1a1a;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            padding: 20px;
        }

        .container h3 {
            color: white; /* Blue heading text */
            margin-bottom: 10px;
        }

        .container label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            color: #ffffff;
        }

        .container select,
        .container input[type="text"] {
            width: 94%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #333;
            border-radius: 5px;
            background-color: #2c3e50; /* Input background */
            color: #ffffff;
            font-size: 16px;
        }

        .container .result {
            padding: 10px;
            color: #ffffff;
            text-align: center;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h3>Select an Option:</h3>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Insert" Value="1"></asp:ListItem>
                <asp:ListItem Text="Kashish" Value="2"></asp:ListItem>
                <asp:ListItem Text="Koshiya" Value="3"></asp:ListItem>
            </asp:DropDownList>

            <h3>Enter Text:</h3>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

            <h3>Result:</h3>
            <asp:Label ID="Label2" runat="server" CssClass="result" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
