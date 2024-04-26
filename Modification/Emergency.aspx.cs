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
    public partial class Emergency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
            DateTimeNow.Text = DateTime.Now.ToString("dd-mm-yyyy");
            Timer.Text = DateTime.Now.ToString("H-m-s");
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            int counter;
            string reason;

            if (Page.IsValid)
            {
                MultiView1.SetActiveView(View2);
            }
            if (DropDownList2.SelectedValue == "Car Accident")
            {
                counter = 1;
                reason = DropDownList2.SelectedValue;
            }
            else if (DropDownList2.SelectedValue == "Fire Burns")
            {
                counter = 26;
                reason = DropDownList2.SelectedValue;
            }
            else if (DropDownList2.SelectedValue == "Suicide")
            {
                counter = 28;
                reason = DropDownList2.SelectedValue;
            }
            else
            {
                counter = 32;
                reason = DropDownList2.SelectedValue;
            }
            string cs = WebConfigurationManager.ConnectionStrings["HospitalDbConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Insert into Patient values(@FName,@LName,@Gender,@DOB,@PhoneNo,@Email,@Address)", sqlConnection);

            cmd.Parameters.AddWithValue("@FName", FNamer.Text);
            cmd.Parameters.AddWithValue("@LName", LNamer.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@DOB", DOB.Text);
            cmd.Parameters.AddWithValue("PhoneNo", PhoneNumber.Text);
            cmd.Parameters.AddWithValue("@Email", EmailAddresss.Text);
            cmd.Parameters.AddWithValue("@Address", Address.Text);

            try
            {
                sqlConnection.Open();
                cmd.ExecuteNonQuery();
                OutputLabel.Text = "Form Filled kindly Proceed to counter no " + counter + " For " + reason;
            }
            catch (Exception ex)
            {
                OutputLabel.Text = ex.Message;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void DateTimeNow_TextChanged(object sender, EventArgs e)
        {

        }
    }
}