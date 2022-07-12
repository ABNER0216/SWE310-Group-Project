using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class Master : System.Web.UI.MasterPage
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

        protected void link1_click(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>");
            }
            else
            {
                Response.Redirect("ItemList.aspx");
            }

        }

        protected void link2_click(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>");
            }
            else
            {
                Response.Redirect("Vaccine Appointment.aspx");
            }

        }

        protected void link3_click(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>");
            }
            else
            {
                Response.Redirect("Daily Report.aspx");
            }

        }

        protected void link4_click(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>");
            }
            else
            {
                Response.Redirect("NAT Appointment.aspx");
            }

        }
        protected void link5_click(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>");
            }
            else
            {
                Response.Redirect("ViewInformation.aspx");
            }

        }

        protected void link6_click(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Write("<script>window.alert('Please login！');</script>");
            }
            else
            {
                Response.Redirect("ShoppingCart.aspx");
            }

        }
    }
}