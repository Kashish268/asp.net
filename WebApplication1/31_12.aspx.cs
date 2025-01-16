using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _31_12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                try
                {
                    string filename = FileUpload1.FileName;
                    string path = Server.MapPath("~/files/") + filename;
                    FileUpload1.SaveAs(path);
                    Label1.Text = filename + "  File Uploaded.";
                }
                catch (Exception ex)
                {
                    Label1.Text += ex.Message;
                }
            }
        }
    }
}