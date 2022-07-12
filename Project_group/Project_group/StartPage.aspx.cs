using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_group
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button1_click(object sender, EventArgs e)
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

        protected void button2_click(object sender, EventArgs e)
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

        protected void button3_click(object sender, EventArgs e)
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

        protected void button4_click(object sender, EventArgs e)
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
        protected void button5_click(object sender, EventArgs e)
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
    }
}