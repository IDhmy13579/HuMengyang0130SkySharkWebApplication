using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuMengyang0130SkySharkWebApplication.NA
{
    public partial class Manage_Database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //week7
        protected void btnArchive_Click(object sender, EventArgs e)
        {
            try
            {
                lblMessage.Text = "";
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("UpdateReserations",conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@date",DateTime.Today.Date.ToShortDateString());
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage.Text = "Update Reservations Done!!!";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
        //week7
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                lblMessage.Text = "";
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("FrequentFlier", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage.Text = "Update FrequentFlier Done!!!";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}