using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TextBox1.Text);
            int b = Convert.ToInt32(TextBox2.Text);
            int c;
            c = a + b;
            Label1.Visible = true;
            Label1.Text=c.ToString();
            TextBox1.Text = "";
            TextBox2.Text = "";
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}