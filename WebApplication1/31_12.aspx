
<!DOCTYPE html>
<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Height="100px" Width="100px" />
               <br />
               <br />
  
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br /><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />



            </div>
    </form>
</body>
</html>
