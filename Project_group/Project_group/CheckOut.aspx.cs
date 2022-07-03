using System;
using System.Collections.Generic;
using System.Data;
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
                Response.Write("<script>window.alert('Please login！');</script>");
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

        protected void SubmitOrder_Click(object sender, EventArgs e)
        {
            decimal totalp = Decimal.Parse(totalprice.Text);
            
            string sql = string.Format("insert into orderinfo(OrderUser, Price,  OrderAddress, OrderDate, Realname, ContactNo) values('{0}','{1}','{2}','{3}','{4}','{5}');", Session["UserName"].ToString(), totalp, TextBox2.Text.ToString(), DateTime.Now, TextBox1.Text.ToString(), Convert.ToInt32(TextBox3.Text.ToString()));
            DBHelper.GetExecute(sql);
            complete.Visible = true;   
            content.Visible = false;   

        }
    }
}