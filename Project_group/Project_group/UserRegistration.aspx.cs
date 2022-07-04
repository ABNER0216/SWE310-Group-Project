using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace Project_group
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String number = DropDownList1.SelectedValue;

                try
                {
                    
                        SqlConnection con = new SqlConnection(@"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True");
                        con.Open();
                        string insertQuery = "insert into UserInfo(UserName,Password,FullName,Age,PhoneNo,UserAddress,IsAdmin,Vaccine,VaccineTime,HealthCode,ClockInStatus) values (@UserName,@Password,@FullName,@Age,@PhoneNo,@UserAddress,@IsAdmin,@Vaccine,@VaccineTime,@HealthCode,@ClockInStatus)";
                        string selectQuery = "select count(*) from UserInfo where UserName='" + TextBox1.Text + "'";
                        SqlCommand cmd1 = new SqlCommand(selectQuery, con);
                        SqlCommand cmd = new SqlCommand(insertQuery, con);
                        if ((int)cmd1.ExecuteScalar() > 0)
                        {
                            con.Close();
                            Label1.Visible = true;
                            Label1.Text = "The user name has existed";
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
                            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                            cmd.Parameters.AddWithValue("@FullName", TextBox3.Text);
                            cmd.Parameters.AddWithValue("@Age", TextBox4.Text);
                            cmd.Parameters.AddWithValue("@PhoneNo", TextBox5.Text);
                            cmd.Parameters.AddWithValue("@UserAddress", TextBox6.Text);
                            cmd.Parameters.AddWithValue("@IsAdmin", "0");
                            cmd.Parameters.AddWithValue("@Vaccine", number);
                            cmd.Parameters.AddWithValue("@VaccineTime", TextBox8.Text);
                            cmd.Parameters.AddWithValue("@HealthCode", "Green");
                            cmd.Parameters.AddWithValue("@ClockInStatus", "0");
                            cmd.ExecuteNonQuery();

                            Response.Write("<script>window.alert('Registration Successfully!!!Please go to login page to login');</script>");
                            con.Close();
                        }
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            
        }
    }
}