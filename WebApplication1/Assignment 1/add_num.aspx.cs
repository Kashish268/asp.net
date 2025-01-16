using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Assignment_1
{
    public partial class add_num : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int a = Convert.ToInt32(TextBox1.Text);
                int b = Convert.ToInt32(TextBox2.Text);
                int c;
                string operation = DropDownList1.SelectedValue;
                switch (operation)
                {
                    case "Add":
                        c = a + b;
                        break;

                    case "Substraction":
                        c = a - b;
                        break;

                    case "Multiply":
                        c = a * b;
                        break;

                    case "Divide":
                        if (b == 0)
                        {
                            Label1.Text = "Can not divisible by zero";
                            Label1.Visible = true;
                            return;
                        }
                        c = a / b;
                        break;

                    default:
                        Label1.Text = "Invalid Operation";
                        Label1.Visible = true;
                        return;
                }
                Label1.Text = $"Result : {c}";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Green;
            
            }
             catch (FormatException)
            {
                // Handle invalid input
                Label1.Text = "Please enter valid numbers.";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }

}

    }
}