using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Assignment_1
{
    public partial class firstpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "")
            {
                Label1.Text = "Please select Question";
                Label1.Visible = true;
            }

            else if (DropDownList1.SelectedValue == "1")
            {
                Label1.Text = "Create ASP.NET page to accept a name from the user and display welcome message.";
                Label1.Visible = true;
                Response.Redirect("display_name.aspx");
            }

            else if (DropDownList1.SelectedValue == "2")
            {
                Label1.Text = "Create ASP.NET page to generate the Temperature Conversion.";
                Label1.Visible = true;
                Response.Redirect("temperture_conversation.aspx");
            }

            else if (DropDownList1.SelectedValue == "3")
            {
                Label1.Text = "Create a component that receives two numbers from the user through a Web Form, and based on the user’s selection it performs algebraic operations on the two numbers and returns the result to the Web Form. The result should be displayed in the Web Form. ";
                Label1.Visible = true;
                Response.Redirect("add_num.aspx");
            }

            else if (DropDownList1.SelectedValue == "4")
            {
                Label1.Text = "Create ASP.NET page to demonstrate “AutoPostBack” property for controls available. ";
                Label1.Visible = true;
                Response.Redirect("autopostback.aspx");
            }

            else {
                Label1.Text = "Something wrong ";
                Label1.Visible = true;
            }

        }
    }
}