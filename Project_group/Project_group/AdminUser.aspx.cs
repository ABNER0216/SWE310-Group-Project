using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class AdminUser : System.Web.UI.Page
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
                //Response.Write("<script>window.alert('Please login！');</script>");
                Response.Redirect("LoginPage.aspx");
            }
        }
        protected void Create_OnClickClient(object sender, EventArgs e)
        {
            string sqlcommand = string.Format("insert into UserInfo(UserName, Password) values('{0}','{1}')", username.Value, password.Value);
            DBHelper.GetExecute(sqlcommand);
            Response.Redirect("AdminUser.aspx");
;        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}