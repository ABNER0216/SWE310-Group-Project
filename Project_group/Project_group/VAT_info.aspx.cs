using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_group
{
    public partial class Appointment_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            //creating sqlConnection object
            SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
            con.Open();
            string insertQuery = "insert into VaccineInfo(VPlace, VDate, VTime, Inventory)values(@VPlace, @VDate, @VTime, @Inventory)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@VPlace", Place.Text.ToString());
            cmd.Parameters.AddWithValue("@VDate", Date.Text.ToString());
            cmd.Parameters.AddWithValue("@VTime", Time.Text.ToString());
            cmd.Parameters.AddWithValue("@Inventory", int.Parse(Inventory.Text));
            cmd.ExecuteNonQuery();

            Response.Write("successfully!");
            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}