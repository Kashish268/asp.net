using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Assignment_1.assignment2
{
    public partial class fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filepath = Server.MapPath("~\\uploads\\") + Path.GetFileName(FileUpload1.FileName);

                    // Ensure the "Uploads" folder exists
                    Directory.CreateDirectory(Server.MapPath("~\\uploads\\"));

                    // Save the file to the specified path
                    FileUpload1.SaveAs(filepath);

                    // Display a success message
                    Label1.Text = "File uploaded successfully! File name: " + FileUpload1.FileName;

                }

                catch {
                    Label1.Text = "Error:";

                }
            }

            else
            {
                // Display a message if no file was selected
                Label1.Text = "Please select a file to upload.";
            }
        }
    }
}