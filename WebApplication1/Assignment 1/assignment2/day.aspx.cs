using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Assignment_1.assignment2
{
    public partial class day : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Display the current day on page load
                Label1.Text = "Today is: " + DateTime.Now.ToString("dddd, dd MMMM yyyy");
            }
        }  

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            // Display the selected date from the calendar
            Label2.Text = "Selected Date: " + Calendar1.SelectedDate.ToString("dddd, dd MMMM yyyy");
        }
    }
    
}