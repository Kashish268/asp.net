<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:black;">
    <form id="form1" runat="server" style="color: #FFFFFF;" >
        
        <h1>Addtion Calculator</h1>

        Enter Num 1 : <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="170px"></asp:TextBox>
        <br /><br />
        Enter Num 2 : <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="170px"></asp:TextBox>
        <p style="margin-left:80px; margin-top:30px;">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" Width="138px"  />
        </p>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        
        

      </form>

</body>
</html>
