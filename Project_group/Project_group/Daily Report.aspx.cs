using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_group
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int id = 1;

        String cs = ConfigurationManager.ConnectionStrings["communityConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            time.Text = DateTime.Now.ToString();
            string sql = "select * from UserInfo where UserID='" + id + "'";
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand myCommand = new SqlCommand(sql, con);
                con.Open();
                SqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                myReader.Read();
                if (!IsPostBack)
                {
                    tb_UserName.Text = myReader["UserName"].ToString();
                    tb_ContactNumber.Text = myReader["PhoneNo"].ToString();
                    tb_UserAddress.Text = myReader["UserAddress"].ToString();
                }
            }
                

        }
        public void CreateMySqlDataReader(string mySelectQuery, SqlConnection myConnection)
        {
            
            
        }
        protected void GVbind()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from ClockIN", con);
                SqlDataReader dr = cmd.ExecuteReader();
            }
        }
        protected void submit_DailyReport(object sender, EventArgs e)
        {
            try
            {
                if(tb_CurrentAddress.Text==""|| tb_Temperature.Text == "" || !(tb_Contact_Yes.Checked|| tb_Contact_No.Checked) ||!(tb_Fever_Yes.Checked 
                    || tb_Fever_No.Checked) || !(tb_Cough_Yes.Checked || tb_Cough_No.Checked) || !(tb_Cold_Yes.Checked || tb_Cold_No.Checked))
                {
                    Response.Write("<script language=javascript>alert('Please input all of the information');</" + "script>");
                }
                else
                {
                    SqlConnection con = new SqlConnection(@"Data Source = LAPTOP-F1P5I179\SQLEXPRESS; Initial Catalog = community; Integrated Security = True");
                    con.Open();
                    string insertQuery = "insert into ClockIN(ClockInTime,CIUserName,CIUserPhone,CAddress,Temperature,IsContact,Cough, Cold,Fever)values(@ClockInTime,@CIUserName,@CIUserPhone,@CAddress,@Temperature,@IsContact,@Cough,@Cold,@Fever)";
                    SqlCommand cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@ClockInTime", DateTime.Now);
                    cmd.Parameters.AddWithValue("@CIUserName", tb_UserName.Text);
                    cmd.Parameters.AddWithValue("@CIUserPhone", tb_ContactNumber.Text);
                    cmd.Parameters.AddWithValue("@CAddress", tb_CurrentAddress.Text);
                    cmd.Parameters.AddWithValue("@Temperature", tb_Temperature.Text);
                    //if (tb_Contact_Yes.Checked) { cmd.Parameters.AddWithValue("@IsContact", "Yes"); } else { cmd.Parameters.AddWithValue("@IsContact", "No"); }
                    //if (tb_Fever_Yes.Checked) { cmd.Parameters.AddWithValue("@Fever", "Yes"); } else { cmd.Parameters.AddWithValue("@Fever", "No"); }
                    //if (tb_Cough_Yes.Checked) { cmd.Parameters.AddWithValue("@Cough", "Yes"); } else { cmd.Parameters.AddWithValue("@Cough", "No"); }
                    //if (tb_Cold_Yes.Checked) { cmd.Parameters.AddWithValue("@Cold", "Yes"); } else { cmd.Parameters.AddWithValue("@Cold", "No"); }
                    if (tb_Contact_Yes.Checked) { cmd.Parameters.AddWithValue("@IsContact", 1); } else { cmd.Parameters.AddWithValue("@IsContact",0); }
                    if (tb_Fever_Yes.Checked) { cmd.Parameters.AddWithValue("@Fever", 1); } else { cmd.Parameters.AddWithValue("@Fever", 0); }
                    if (tb_Cough_Yes.Checked) { cmd.Parameters.AddWithValue("@Cough", 1); } else { cmd.Parameters.AddWithValue("@Cough", 0); }
                    if (tb_Cold_Yes.Checked) { cmd.Parameters.AddWithValue("@Cold", 1); } else { cmd.Parameters.AddWithValue("@Cold", 0); }
                    cmd.ExecuteNonQuery();
                    Response.Write("<script language=javascript>alert('You have submitted the record successfully.');</" + "script>");
                    con.Close();
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("ERROR" + ex.ToString());
            }
        }
    }
}