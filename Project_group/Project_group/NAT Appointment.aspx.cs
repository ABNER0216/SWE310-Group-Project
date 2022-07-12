using System;
using System.Data.SqlClient;

namespace Project_group
{
    public partial class NAT_Appointment : System.Web.UI.Page
    {
        int userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
            if (Session["UserName"] == null)
            {
                //Response.Write("<script>window.alert('Please login！');</script>");
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                con.Open();
                string selectQuery = "select UserID from UserInfo where UserName=@UserName";
                SqlCommand cmd1 = new SqlCommand(selectQuery, con);
                cmd1.Parameters.AddWithValue("@UserName", Session["UserName"]);

                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.Read())
                {
                    string userids = (reader["UserID"].ToString());
                    userid = int.Parse(userids);
                }
                reader.Close();
                con.Close();

            }
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

            try
            {
                //creating sqlConnection object
                SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
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
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}