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
    public partial class appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                if (AppointmentFor.SelectedValue == "Dentist")
                {
                    string cs = WebConfigurationManager.ConnectionStrings["HospitalDbConnectionString"].ConnectionString;
                    SqlConnection sqlConnection = new SqlConnection(cs);
                    SqlCommand cmd = new SqlCommand("Insert into Dentist values(@FName,@LName,@Gender,@DOB,@PhoneNo,@Email,@ApFor,@History,@DOA)", sqlConnection);

                    cmd.Parameters.AddWithValue("@FName", FNamer.Text);
                    cmd.Parameters.AddWithValue("@LName", LNamer.Text);
                    cmd.Parameters.AddWithValue("@Gender", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@DOB", DOB.Text);
                    cmd.Parameters.AddWithValue("PhoneNo", PhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@Email", EmailAddresss.Text);
                    cmd.Parameters.AddWithValue("@ApFor", AppointmentFor.Text);
                    cmd.Parameters.AddWithValue("@History", Phistory.Text);
                    cmd.Parameters.AddWithValue("@DOA", DOA.Text);

                    try
                    {
                        sqlConnection.Open();
                        cmd.ExecuteNonQuery();
                        OutputLabel.Text = "Form Filled sucessfully";
                    }
                    catch (Exception ex)
                    {
                        OutputLabel.Text = ex.Message;
                    }
                }
                else
                {
                    string cs = WebConfigurationManager.ConnectionStrings["HospitalDbConnectionString"].ConnectionString;
                    SqlConnection sqlConnection = new SqlConnection(cs);
                    SqlCommand cmd = new SqlCommand("Insert into Optician values(@FName,@LName,@Gender,@DOB,@PhoneNo,@Email,@ApFor,@History,@DOA)", sqlConnection);

                    cmd.Parameters.AddWithValue("@FName", FNamer.Text);
                    cmd.Parameters.AddWithValue("@LName", LNamer.Text);
                    cmd.Parameters.AddWithValue("@Gender", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@DOB", DOB.Text);
                    cmd.Parameters.AddWithValue("PhoneNo", PhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@Email", EmailAddresss.Text);
                    cmd.Parameters.AddWithValue("@ApFor", AppointmentFor.Text);
                    cmd.Parameters.AddWithValue("@History", Phistory.Text);
                    cmd.Parameters.AddWithValue("@DOA", DOA.Text);

                    try
                    {
                        sqlConnection.Open();
                        cmd.ExecuteNonQuery();
                        OutputLabel.Text = "Form Filled sucessfully";
                    }
                    catch (Exception ex)
                    {
                        OutputLabel.Text = ex.Message;
                    }

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }
    }
}