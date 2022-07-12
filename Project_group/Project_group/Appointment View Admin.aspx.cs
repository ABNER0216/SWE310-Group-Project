using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_group
{
    public partial class Appointment_View_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
            con.Open();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
            con.Open();
            string deleteQuery = "delete from NATAppointment where NATAID = @NATAID";
        }
    }
}