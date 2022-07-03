using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class EditUserInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ChangePassword.Visible = false;
            if (!IsPostBack)
            {
                String UserName = Session["UserName"].ToString();
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M3M70HCP\SQLEXPRESS;Initial Catalog=community;Integrated Security=True");
                con.Open();
                SqlCommand Command = con.CreateCommand();
                Command.CommandText = "SELECT * FROM  UserInfo where UserName='" + UserName + "'";
                SqlDataReader read = Command.ExecuteReader();
                read.Read();
                TextBox1.Text = Convert.ToString(read["UserName"]);
                TextBox2.Text = Convert.ToString(read["Password"]);
                TextBox3.Text = Convert.ToString(read["FullName"]);
                TextBox4.Text = Convert.ToString(read["Age"]);
                TextBox5.Text = Convert.ToString(read["PhoneNo"]);
                TextBox6.Text = Convert.ToString(read["UserAddress"]);
                DropDownList1.SelectedValue = Convert.ToString(read["Vaccine"]);
                TextBox8.Text = Convert.ToString(read["VaccineTime"]);
                DateTime now = DateTime.Parse(TextBox8.Text);
                TextBox8.Text = now.ToString("yyyy-MM-dd");
                read.Close();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || DropDownList1.SelectedValue == "" || TextBox8.Text == "")
            {
                Response.Write("<script>window.alert('Cannot Be empty');</script>");
            }
            else
            {
                if (TextBox7.Text != "")
                {
                    TextBox2.Text = TextBox7.Text;
                }
                if (FileUpload1.HasFile)
                {
                    //Create an object to access the uploaded file and get the uploaded file
                    HttpPostedFile file = FileUpload1.PostedFile;
                    //Get the file name and extension of the uploaded file
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    string extension = Path.GetExtension(filename);
                    //Instantiate a byte array whose length is equal to the length of the uploaded file
                    byte[] imagetype = new byte[file.ContentLength];
                    //Read file data into byte array
                    file.InputStream.Read(imagetype, 0, file.ContentLength);
                    if ((extension == ".jpg") || (extension == ".png") || (extension == ".gif") || (extension == ".bmp"))
                    {
                        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M3M70HCP\SQLEXPRESS;Initial Catalog=community;Integrated Security=True");
                        con.Open();
                        string updateQuery = "update UserInfo set Password='" + TextBox2.Text + "',FullName='" + TextBox3.Text + "',Age='" + TextBox4.Text + "',PhoneNo='" + TextBox5.Text + "',UserAddress='" + TextBox6.Text + "',Vaccine='" + DropDownList1.SelectedValue + "',VaccineTime='" + TextBox8.Text + "',Profile='" + SqlDbType.VarBinary + "' where UserName='" + TextBox1.Text + "'";
                        SqlCommand cmd = new SqlCommand(updateQuery, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                else
                {
                    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M3M70HCP\SQLEXPRESS;Initial Catalog=community;Integrated Security=True");
                    con.Open();
                    string updateQuery = "update UserInfo set Password='" + TextBox2.Text + "',FullName='" + TextBox3.Text + "',Age='" + TextBox4.Text + "',PhoneNo='" + TextBox5.Text + "',UserAddress='" + TextBox6.Text + "',Vaccine='" + DropDownList1.SelectedValue + "',VaccineTime='" + TextBox8.Text + "' where UserName='" + TextBox1.Text + "'";
                    SqlCommand cmd = new SqlCommand(updateQuery, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Response.Write("<script>window.alert('Successfully');</script>");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            ChangePassword.Visible = true;
        }

    }
}                                                                                                                                                 