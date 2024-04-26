using System;

namespace Modification
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Doctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor.aspx");
        }

        protected void Reception_Click(object sender, EventArgs e)
        {
            Response.Redirect("Receptionist.aspx");

        }
    }
}