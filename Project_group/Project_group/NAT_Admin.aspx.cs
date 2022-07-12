using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_group
{
    public partial class NAT_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                //creating sqlConnection object
                SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
                con.Open();
                string insertQuery = "INSERT INTO NATTime (NATAddress, NATDate, NATTime) VALUES (@NATAddress, @NATDate, @NATTime)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@NATAddress", Place.Text.ToString());
                cmd.Parameters.AddWithValue("@NATDate", Date.Text.ToString());
                cmd.Parameters.AddWithValue("@NATTime", Time.Text.ToString());
                cmd.ExecuteNonQuery();

                Response.Write("successfully!");
                con.Close();
                Response.Redirect(Request.RawUrl);

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}