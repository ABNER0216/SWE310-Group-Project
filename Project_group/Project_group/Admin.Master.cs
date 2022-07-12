using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                String UserName = Session["UserName"].ToString();
                Label1.Text = "Hello " + UserName;
            }
            else
            {
                Label1.Text = "Hello User";
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Session.Remove("UserName");
            Session["Userid"] = null;
            Session.Remove("Userid");
        }
    }
}