using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Project_group
{
    public class DBHelper
    {
        static string constr = @"Data Source=雷义焘\SQLEXPRESS01;initial catalog=community; integrated security=true";
        public static DataSet getDataSet(string sql)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            con.Close();
            return ds;
        }

        public static int GetExecute(string sql)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand com = new SqlCommand(sql, con);
            int i = com.ExecuteNonQuery();
            con.Close();
            return i;
        }


    }
}