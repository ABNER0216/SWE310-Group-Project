﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String UserName = TextBox1.Text;
            String Password = TextBox2.Text;
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M3M70HCP\SQLEXPRESS;Initial Catalog=community;Integrated Security=True");
            con.Open();

            SqlCommand sqlComGet = new SqlCommand();
            sqlComGet.Connection = con;
            sqlComGet.CommandText = "select * from UserInfo where UserName='" + UserName + "' and Password='" + Password + "'";
            SqlDataReader sqlDr = sqlComGet.ExecuteReader();
            if (sqlDr.Read())
            {
                Session["UserName"] = UserName;

                Session["Password"] = Password;

                Response.Redirect("ViewInformation.aspx");
            }
            else
            {


                Response.Write("<script>window.alert('Your code and password error！');</script>");


            }



            con.Close();
        }

    }
}