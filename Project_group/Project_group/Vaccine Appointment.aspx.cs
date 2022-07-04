using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_group
{
    public partial class Vaccine_Appointment : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-F1P5I179\SQLEXPRESS;Initial Catalog=community;Integrated Security=True");
            Session["Userid"] = "1";


        }

        protected void ddl_place_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddl_time_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cell_1_Value = (DetailsView1.Rows[0].Cells[1]).Text;
            int inventory = int.Parse(cell_1_Value);
            DateTime localDate = DateTime.Now;
            int userid = int.Parse(Session["Userid"].ToString());
            int vid = 0;

            string name = tb_name.Text.ToString();

            if (name == "")
            {
                Response.Write("pls enter your name");
            }
            else
            {

                if (inventory > 0)
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-F1P5I179\SQLEXPRESS;Initial Catalog=community;Integrated Security=True");
                        con.Open();
                        inventory -= 1;
                        string insertQuery = "insert into VacAppointment(AppointmentDate,AppointmentTime,AppointmentPlace,ActionTime,UserName,UserID,VacInfoID)values(@AppointmentDate,@AppointmentTime,@AppointmentPlace,@ActionTime,@UserName,@UserID,@VacInfoID)";
                        string updateQuery = "update VaccineInfo set Inventory = @Inventory where VPlace = @VPlace AND VDate = @VDate AND VTime = @VTime";
                        string selectQuery = "select VID from VaccineInfo where VPlace = @VPlace AND VDate = @VDate AND VTime = @VTime";

                        SqlCommand cmd1 = new SqlCommand(selectQuery, con);
                        SqlCommand cmd2 = new SqlCommand(insertQuery, con);
                        SqlCommand cmd3 = new SqlCommand(updateQuery, con);

                        cmd1.Parameters.AddWithValue("@VPlace", ddl_place.SelectedValue);
                        cmd1.Parameters.AddWithValue("@VDate", ddl_date.SelectedValue);
                        cmd1.Parameters.AddWithValue("@VTime", ddl_time.SelectedValue);
                        SqlDataReader reader = cmd1.ExecuteReader();

                        if (reader.Read())
                        {
                            string vids = reader["VID"].ToString();
                            vid = int.Parse(vids);
                        }

                        reader.Close();

                        cmd2.Parameters.AddWithValue("@AppointmentDate", ddl_date.SelectedValue);
                        cmd2.Parameters.AddWithValue("@AppointmentTime", ddl_time.SelectedValue);
                        cmd2.Parameters.AddWithValue("@AppointmentPlace", ddl_place.SelectedValue);
                        cmd2.Parameters.AddWithValue("@ActionTime", localDate);
                        cmd2.Parameters.AddWithValue("@UserName", tb_name.Text);
                        cmd2.Parameters.AddWithValue("@UserID", userid);
                        cmd2.Parameters.AddWithValue("@VacInfoID", vid);
                        cmd2.ExecuteNonQuery();

                        cmd3.Parameters.AddWithValue("@Inventory", inventory);
                        cmd3.Parameters.AddWithValue("@VPlace", ddl_place.SelectedValue);
                        cmd3.Parameters.AddWithValue("@VDate", ddl_date.SelectedValue);
                        cmd3.Parameters.AddWithValue("@VTime", ddl_time.SelectedValue);
                        cmd3.ExecuteNonQuery();

                        con.Close();
                        Response.Write("<script language=javascript>alert('successful appointment.');</" + "script>");
                        Response.Redirect(Request.RawUrl);
                    }
                    catch (Exception ex)
                    {
                        Response.Write("error" + ex.ToString());
                    }


                }
                else
                {
                    Response.Write("<script language=javascript>alert('failed appointment.');</" + "script>");
                }
            }


        }
        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}