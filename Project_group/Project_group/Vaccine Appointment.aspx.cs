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
            SqlConnection con = new SqlConnection(@"Data Source=Lyrebird;Initial Catalog=community;Integrated Security=True");

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

            if (inventory > 0)
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=Lyrebird;Initial Catalog=community;Integrated Security=True");
                    con.Open();
                    inventory -= 1;
                    string insertQuery = "insert into VacAppointment(AppointmentDate,AppointmentTime,AppointmentPlace,ActionTime,UserName)values(@AppointmentDate,@AppointmentTime,@AppointmentPlace,@ActionTime,@UserName)";
                    string updateQuery = "update VaccineInfo set Inventory = @Inventory where VPlace = @VPlace AND VDate = @VDate AND VTime = @VTime";
                    SqlCommand cmd1 = new SqlCommand(insertQuery, con); 
                     SqlCommand cmd2 = new SqlCommand(updateQuery, con); 
                    cmd1.Parameters.AddWithValue("@AppointmentDate", ddl_date.SelectedValue);
                    cmd1.Parameters.AddWithValue("@AppointmentTime", ddl_time.SelectedValue);
                    cmd1.Parameters.AddWithValue("@AppointmentPlace", ddl_place.SelectedValue);
                    cmd1.Parameters.AddWithValue("@ActionTime", localDate);
                    cmd1.Parameters.AddWithValue("@UserName", tb_name.Text);
                    cmd1.ExecuteNonQuery();

                    cmd2.Parameters.AddWithValue("@Inventory", inventory);
                    cmd2.Parameters.AddWithValue("@VPlace", ddl_place.SelectedValue);
                    cmd2.Parameters.AddWithValue("@VDate", ddl_date.SelectedValue);
                    cmd2.Parameters.AddWithValue("@VTime", ddl_time.SelectedValue);
                    cmd2.ExecuteNonQuery();

                    con.Close();
                    Response.Redirect(Request.RawUrl);
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }

                
            }
            else
            {
                Response.Write("Failed");
            }

            
        }
        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}