using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication1.multiview_control
{
    public partial class multiview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MultiView2_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MultiView1.SetActiveView(View2);
            string gen = "";
            if (RadioButtonList2.SelectedValue ==  "male")
            {
                gen = "Male";
            }
            else if (RadioButtonList2.SelectedValue == "female")
            {
                gen = "Female";
            }

            else
            {
                gen = "";
            }
            Label3.Text = gen;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View3);
            Label2.Text = TextBox1.Text;
            Label4.Text = TextBox5.Text;
            Label5.Text = TextBox2.Text;
            Label6.Text = TextBox3.Text;
            Label7.Text = TextBox4.Text;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View2);
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}