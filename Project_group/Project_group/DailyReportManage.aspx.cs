using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_group
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["communityConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Unnamed1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlDataSource1.DeleteCommand = "delete from ClockIN where ClockInID='" + id + "'";

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from ClockIN where ClockInID='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script language=javascript>alert('Delete the report successfully.');</" + "script>");
                    GridView1.EditIndex = -1;
                }
            }
        }
    }
}