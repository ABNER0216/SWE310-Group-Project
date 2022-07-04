using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_group
{
    public partial class Appointment_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Userid"] = "1";

            int i = VAC_GridView.Rows.Count;
            if(i == 0)
            {
                Label1.Text = ("you don't have any Vaccine appointment");
            }

            int j = NAT_GridView.Rows.Count;
            if (i == 0)
            {
                Label2.Text = ("you don't have any NAT appointment");
            }



        }


        protected void NATGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            // Convert the row index stored in the CommandArgument
            // property to an Integer.
            int index = Convert.ToInt32(e.CommandArgument);
            Response.Write(index);

            GridViewRow selectedRow = NAT_GridView.Rows[index];
            TableCell NATIDcell = selectedRow.Cells[0];
            
            string NATIDs = NATIDcell.Text;
            int NATID = int.Parse(NATIDs);

            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=Lyrebird;Initial Catalog=community;Integrated Security=True");
                con.Open();
                string deleteQuery = "delete from NATAppointment where NATAID = @NATAID";
                SqlCommand cmd = new SqlCommand(deleteQuery, con);
                cmd.Parameters.AddWithValue("@NATAID", NATID);
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect(Request.RawUrl);
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void VaccineGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            int index = Convert.ToInt32(e.CommandArgument);
            
            int vacinfo = 0;
            int inventory = 0;

            GridViewRow selectedRow = VAC_GridView.Rows[index];
            TableCell VacIDcell = selectedRow.Cells[0];

            string VacIDs = VacIDcell.Text;
            int VacID = int.Parse(VacIDs);

            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=Lyrebird;Initial Catalog=community;Integrated Security=True");
                con.Open();
                
                string selectQuery = "select VacInfoID from VacAppointment where VacAID = @VacAID";
                SqlCommand cmd2 = new SqlCommand(selectQuery, con);
                cmd2.Parameters.AddWithValue("@VacAID", VacID);
                SqlDataReader reader = cmd2.ExecuteReader();

                if (reader.Read())
                {
                    string vacinfos = reader["VacInfoID"].ToString();
                    vacinfo = int.Parse(vacinfos);
                }

                reader.Close();

                string selectQuery2 = "select Inventory from VaccineInfo where VID=@VID";
                SqlCommand cmd3 = new SqlCommand(selectQuery2, con);
                cmd3.Parameters.AddWithValue("@VID", vacinfo);
                SqlDataReader reader2 = cmd3.ExecuteReader();

                if (reader2.Read())
                {
                    string inventorys = reader2["Inventory"].ToString();
                    inventory = int.Parse(inventorys);
                }
                reader2.Close();

                inventory += 1;
                string updateQuery = "update VaccineInfo set Inventory = @inventory where VID=@VID";
                SqlCommand cmd4 = new SqlCommand(updateQuery, con);
                cmd4.Parameters.AddWithValue("@inventory", inventory);
                cmd4.Parameters.AddWithValue("@VID", vacinfo);
                cmd4.ExecuteNonQuery();

                string deleteQuery = "delete from VacAppointment where VacAID = @VacAID";
                SqlCommand cmd = new SqlCommand(deleteQuery, con);
                cmd.Parameters.AddWithValue("@VacAID", VacID);
                cmd.ExecuteNonQuery();

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