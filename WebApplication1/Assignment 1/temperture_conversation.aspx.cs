using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Assignment_1
{
    public partial class temperture_conversation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                double convertedTemperature;
                double inputTemperature = Convert.ToDouble(TextBox1.Text);

                // Check which conversion is selected
                if (RadioButton1.Checked)
                {
                    // Celsius to Fahrenheit conversion
                    convertedTemperature = (inputTemperature * 9 / 5) + 32;
                    Label1.Text = $"Temperature in Fahrenheit: {convertedTemperature:F2}°F";
                }
                else if (RadioButton2.Checked)
                {
                    // Fahrenheit to Celsius conversion
                    convertedTemperature = (inputTemperature - 32) * 5 / 9;
                    Label1.Text = $"Temperature in Celsius: {convertedTemperature:F2}°C";
                }
                else
                {
                    // No conversion option selected
                    Label1.Text = "Please select a conversion type.";
                }
            }
            catch (FormatException)
            {
                // Handle invalid input
                Label1.Text = "Please enter a valid numerical temperature.";
            }
            catch (Exception ex)
            {
                // Handle any other errors
                Label1.Text = $"An error occurred: {ex.Message}";
            }
        }

    }
}