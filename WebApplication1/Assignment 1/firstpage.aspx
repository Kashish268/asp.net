<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firstpage.aspx.cs" Inherits="WebApplication1.Assignment_1.firstpage" %>

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

        .container h2 {
            color: white; /* Blue heading text */
            margin-bottom: 10px;
        }

        .container select {
            width: 94%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #333;
            border-radius: 5px;
            background-color: #2c3e50; /* Input background */
            color: #ffffff;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Please select question:</h2>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                <asp:ListItem Text="Q1" Value="1"></asp:ListItem>
                <asp:ListItem Text="Q2" Value="2"></asp:ListItem>
                <asp:ListItem Text="Q3" Value="3"></asp:ListItem>
                <asp:ListItem Text="Q4" Value="4"></asp:ListItem>
            </asp:DropDownList><br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
