<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multiview.aspx.cs" Inherits="WebApplication1.multiview_control.multiview" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: black;
            color: white;
        }

        form {
            margin-top:100px;
            background-color: darkblue;
            color: white;
            margin: 0 auto;
            width: 50%;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
        }

/*        asp:Button {
            padding : 4px;
            color : white;
            background-color: black;
        }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Multiview Control</h2>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <br />
                  <asp:View ID="View1" runat="server">
                      1. Student Personal Information<br />
                      <br />
                      Enter Your Name :<br />
                      <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                      <br />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter name" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <br />
                     
                      
                      Select Gender :<br />
                      <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                          <asp:ListItem>male</asp:ListItem>
                          <asp:ListItem>female</asp:ListItem>
                      </asp:RadioButtonList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Please select field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                     
                      
                      Enter Your Address :<br />
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                      <br />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" Font-Bold="True" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                      <br />
                      
                      Enter Your Degree :<br />
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                      <br />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter your degree" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                      
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />
  </asp:View>

                <asp:View ID="View2" runat="server">
                    1. Student Contact Information<br />
                    <br />
                    Enter Your Email :<br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                   
                    Enter Your Contact No :<br />
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid Contact Number" Font-Bold="True" ForeColor="Red" ValidationExpression="^\+91[6-9]\d{9}$"></asp:RegularExpressionValidator>
                    <br />
                    
    <asp:Button ID="Button2" runat="server" Text="Previous" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Next" OnClick="Button3_Click" />
</asp:View>

                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Previous" OnClick="Button4_Click" />
                </asp:View>
                
                <br />
              
            </asp:MultiView>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
