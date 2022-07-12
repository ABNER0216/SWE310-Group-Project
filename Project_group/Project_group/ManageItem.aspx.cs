using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class ManageItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                //Response.Write("<script>window.alert('Please login！');</script>");
                Response.Redirect("LoginPage.aspx");
            }
            if (!Session["UserName"].Equals("Admin"))
            {
                //Response.Write("<script>window.alert('You are not admin！');</script>");
                Response.Redirect("LoginPage.aspx");
            }
        }
        protected void CreateNewItem(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("/imgs/" + str));
                string Image = "/imgs/" + str.ToString();
                string sqlcommand = string.Format("insert into ItemList(ItemName, Inventory, Price, Image) values('{0}','{1}','{2}','{3}')", itemname.Value, itemnumber.Value, itemprice.Value, Image);
                DBHelper.GetExecute(sqlcommand);
                Response.Redirect("ManageItem.aspx");
            }
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}