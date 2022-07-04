using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//购物车
namespace Project_group
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>"); //不知道为什么没用，XYH帮忙看下，结算页面也是
                Response.Redirect("LoginPage.aspx");
            }
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["ItemId"]))
                {
                    string sqlUpdate = string.Format("update ShoppingCart set ItemNum=ItemNum+1 where UserName='{0}' and ItemId='{1}'", Session["UserName"], Request.QueryString["ItemId"]);
                    //string deleteinventory = string.Format("update ItemList set Inventory=Inventory-1 where ItemId='{0}'", Request.QueryString["ItemId"]); 没用
                    int numUpdate = DBHelper.GetExecute(sqlUpdate);
                    //DBHelper.GetExecute(deleteinventory);
                    if (numUpdate <= 0)
                    {
                        string sqlInsert = string.Format("insert into ShoppingCart values (1,'{0}','{1}','{2}','{3}','{4}')", Request.QueryString["ItemId"], Session["UserName"], Request.QueryString["Price"], Request.QueryString["ItemName"], Request.QueryString["Inventory"]);
                        DBHelper.GetExecute(sqlInsert);
                    }
                }
            }
        }

        protected void ShopCart_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters[0].Value = Session["UserName"].ToString();
        }
        private decimal total;
        protected void calculateprice(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = e.Row.DataItem as DataRowView;
                total += Convert.ToInt32(dr.Row["itemnum"]) * Convert.ToDecimal(dr.Row["Price"]);
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                PriceTotal.Text = "Total Price：　" + total.ToString();
            }
            else
            {
                PriceTotal.Text = "";
            }
        }

        protected void CartGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox_TextChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < this.CartGrid.Rows.Count; i++)
            {
                CartGrid.UpdateRow(i, false);
            }
        }
    }
}