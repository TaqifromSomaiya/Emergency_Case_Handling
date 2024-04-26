using System;
using System.Web.UI;

namespace Modification
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EmergencyForm_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Emergency.aspx");

        }

        protected void Appointment_Click1(object sender, EventArgs e)
        {
            Response.Redirect("appointment.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }
    }
}