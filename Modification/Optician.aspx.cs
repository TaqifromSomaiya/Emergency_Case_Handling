using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Modification
{
    public partial class Optician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string cs = WebConfigurationManager.ConnectionStrings["HospitalDbConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Delete from Optician WHERE Id=@Id", conn);
            cmd.Parameters.AddWithValue("@Id", TextBox1.Text);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Label3.Text = "Patient Deleted succesfully ☠️☠️💀";
            }
            catch (Exception ex)
            {

                Label3.Text = ex.Message;
            }

            Response.Redirect("Optician.aspx");
            Label3.Text = "Patient Deleted succesfully ☠️☠️💀";

        }
    }
}