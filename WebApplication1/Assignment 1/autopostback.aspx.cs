using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Assignment_1
{
    public partial class autopostback : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = "You selected: " + DropDownList1.SelectedItem.Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label2.Text = "You entered: " + TextBox1.Text;
        }
    }
}