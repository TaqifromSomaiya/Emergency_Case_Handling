using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Modification
{
    public partial class Doctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MultiView1.SetActiveView(View2);
            }

        }

        protected void Doctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dentist.aspx");

        }

        protected void Reception_Click(object sender, EventArgs e)
        {
            Response.Redirect("Optician.aspx");
        }
    }
}