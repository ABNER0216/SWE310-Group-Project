using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class CheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void Orderitems_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters[0].Value = Session["UserName"].ToString();
        }
        public decimal total;
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = e.Row.DataItem as DataRowView;
                total += Convert.ToInt32(dr.Row["ItemNum"]) * Convert.ToDecimal(dr.Row["Price"]);
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                totalprice.Text = total.ToString();
            }
            else
            {
                totalprice.Text = "0";
            }

        }

        protected void accountdata_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters[0].Value = Session["UserName"].ToString();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        public bool checkout=true;
        protected void SubmitOrder_Click(object sender, EventArgs e)
        {
            decimal totalp = Decimal.Parse(totalprice.Text);
            string checkinventory = "UPDATE ShoppingCart set remain=Inventory-ItemNum";
            DBHelper.GetExecute(checkinventory);
            var list = new List<int>();
            string connection = @"Data Source=雷义焘\SQLEXPRESS01;Initial Catalog=community;Integrated Security=True";
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            string query = "select remain from ShoppingCart";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                list.Add(reader.GetInt32(0));
            }
            foreach(int data in list)
            {
                if (data < 0)
                {
                    checkout = false;
                }
            }
            if (checkout == true)
            {
                string updatesql = "update ItemList set ItemList.Inventory = ShoppingCart.remain from ShoppingCart where ItemList.ItemID=ShoppingCart.ItemId";
                string updatesql2 = "update ShoppingCart set ShoppingCart.Inventory = ShoppingCart.remain from ShoppingCart";
                DBHelper.GetExecute(updatesql);
                DBHelper.GetExecute(updatesql2);
                string sql = string.Format("insert into orderinfo(OrderUser, Price,  OrderAddress, OrderDate, Realname, ContactNo) values('{0}','{1}','{2}','{3}','{4}','{5}');", Session["UserName"].ToString(), totalp, TextBox2.Text.ToString(), DateTime.Now, TextBox1.Text.ToString(), Convert.ToInt32(TextBox3.Text.ToString()));
                DBHelper.GetExecute(sql);
                complete.Visible = true;
                content.Visible = false;
                string rmsql = string.Format("delete from ShoppingCart where UserName='{0}'", Session["UserName"].ToString());
                DBHelper.GetExecute(rmsql);
            }
            else
            {
                Response.Write("<script>window.alert('There is no enough inventory, please try again！');</script>");
            }

        }
    }
}