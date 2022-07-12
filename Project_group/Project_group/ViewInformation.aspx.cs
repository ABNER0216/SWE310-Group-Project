using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class ViewInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>");
            }
            else
            {
                Label1.Text = Session["UserName"].ToString();
            }
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditUserInformation.aspx");
        }



    }
}