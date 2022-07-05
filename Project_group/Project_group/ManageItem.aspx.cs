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
            
        }
        protected void CreateNewItem(object sender, EventArgs e)
        {
            string sqlcommand = string.Format("insert into ItemList(ItemName, Inventory, Price) values('{0}','{1}','{2}')", itemname.Value, itemnumber.Value, itemprice.Value);
            DBHelper.GetExecute(sqlcommand);
            //Response.Redirect("CreateNewItem.aspx");
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}