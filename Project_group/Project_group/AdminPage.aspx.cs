using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void button1_click(object sender, EventArgs e)
        {
                Response.Redirect("ManageItem.aspx");

        }

        protected void button2_click(object sender, EventArgs e)
        {
                Response.Redirect("AdminUser.aspx");
        }

        protected void button3_click(object sender, EventArgs e)
        {
                Response.Redirect("DailyReportManage.aspx");
        }
        protected void button4_click(object sender, EventArgs e)
        {
                Response.Redirect("NAT_Admin.aspx");//要修改链接
        }
        protected void button5_click(object sender, EventArgs e)
        {
                Response.Redirect("VAT_info.aspx");//修改链接
        }
    }
}