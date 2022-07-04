using System;
using System.Data.SqlClient;

namespace Project_group
{
    public partial class NAT_Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=Lyrebird;Initial Catalog=community;Integrated Security=True");
            Session["Userid"] = "1";
        }

        protected void dll_NATPlace_SelectedIndexChanged(object sender, EventArgs e)
        {

           
        }

        protected void ddl_NATtime_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void ddl_NATDate_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime localDate = DateTime.Now;
            int userid = int.Parse(Session["Userid"].ToString());

            try {
                //creating sqlConnection object
                SqlConnection con = new SqlConnection(@"Data Source=Lyrebird;Initial Catalog=community;Integrated Security=True");
                con.Open();
                string insertQuery = "insert into NATAppointment(NATPlace,ANATTime,ANATDate,ActionTime,UserName,UserID)values(@NATPlace,@ANATTime,@ANATDate,@ActionTime,@UserName,@UserID)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@ANATTime", ddl_NATtime.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@NATPlace", dll_NATPlace.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@ANATDate", ddl_NATDate.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@ActionTime", localDate);
                cmd.Parameters.AddWithValue("@UserName", tb_Name.Text);
                cmd.Parameters.AddWithValue("@UserID", userid);
                cmd.ExecuteNonQuery();

                Response.Write("successfully!");
                con.Close();
                Response.Redirect(Request.RawUrl);
            } catch (Exception ex) 
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}